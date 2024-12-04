/* jslint browser:true */

(function ($) {
    $.each(['show', 'hide'], function (_, ev) {
      var el = $.fn[ev];
      $.fn[ev] = function () {
        this.trigger(ev);
        return el.apply(this, arguments);
      };
    });
})(jQuery);

(async function () {
    function $id(id) {
        return document.getElementById(id);
    }

    function Output(msg) {
        var m = $id("messages");
        m.innerHTML = msg + m.innerHTML;
    }

    function FileDragHover(e) {
        e.stopPropagation();
        e.preventDefault();
        e.target.className = (e.type === "dragover" ? "hover" : "");
    }

    function FileSelectHandler(e) {
        FileDragHover(e);

        var files = e.target.files || e.dataTransfer.files;

        for (var i = 0, f; f = files[i]; i++) {
            ParseFile(f);
            UploadFile(f);
        }
    }

    function ParseFile(file) {
        Output(`<p>File information: <strong>${file.name}</strong> type: <strong>${file.type}</strong>size: <strong>${file.size}</strong> bytes</p>`);
    }

    function UploadFile(file) {
        var xhr = new XMLHttpRequest();
        if (xhr.upload) {
            var o = $id("progress");
            var progress = o.appendChild(document.createElement("p"));
            progress.appendChild(document.createTextNode("upload " + file.name));

            xhr.upload.addEventListener("progress", function (e) {
                var pc = parseInt(100 - (e.loaded / e.total * 100));
                progress.style.backgroundPosition = pc + "% 0";
            }, false);

            xhr.onreadystatechange = function (e) {
                if (xhr.readyState == 4) {
                    progress.className = (xhr.status == 200 ? "success" : "failure");

                    if (xhr.status != 200) {
                        Output("<p>Upload " + xhr.statusText + ": " + xhr.responseText + "</p>")
                    }
                }
            };

            var target = $("#radio_target").prop("checked") ? "firmware/target" : "firmware/self";

            xhr.open("POST", target, true);
            xhr.send(file);
        }
    }

    function Init() {
        var fileselect = $id("fileselect"),
            filedrag = $id("filedrag");

        fileselect.addEventListener("change", FileSelectHandler, false);

        var xhr = new XMLHttpRequest();
        if (xhr.upload) {
            filedrag.addEventListener("dragover", FileDragHover, false);
            filedrag.addEventListener("dragleave", FileDragHover, false);
            filedrag.addEventListener("drop", FileSelectHandler, false);
            filedrag.style.display = "block";
        }
    }

    if (window.File && window.FileList && window.FileReader) {
        Init();

        let response = await fetch('configuration');
        let configuration = await response.json();
        var timer;

        $(".topnav li").each(function(i) {
            if (i > 0) { $("#content").children("div:eq('" + i + "')").hide(); }
        });

        $(".topnav li > a").each(function(i) {
            $(this).click(function() {
                $(".topnav li > a").removeClass('active');
                $(this).addClass('active');
                $("#content").children("div:eq('" + i + "')").show().siblings().hide();
            });
        });

        $('#about').on('show', function() {
            $('#about h1').html($('#about h1').html().replace('${version}', configuration.version_full))
        });

        $('#discovery').on('show', async function() {
            timer = setInterval(async function() {
                let response = await fetch('discovery');
                let discovery = await response.json();
    
                $('#postmasters tbody').empty();
                discovery.devices.forEach((device) => {
                    $('#postmasters tbody').append(`<tr><td><a target=_blank href=http://${device.hostname.replace('.postmaster._tcp', '')}>${device.hostname}</a></td><td>${device.version}</td><td>${device.attributes}</td></tr>`);
                });
            }, 5000);
        });

        $('#discovery').on('hide', function() {
            clearInterval(timer);
        });

        $('#hostname').val(configuration.hostname);
        $('#hostname').blur(async function() {
            const data = {
                hostname: $('#hostname').val()
            }

            const options = {
                method: 'POST',
                body: JSON.stringify(data),
                headers: {
                    'Content-Type': 'application/json'
                }
            }

            let response = await fetch('configuration', options);
            let configuration = await response.json();
            $('#hostname').val(configuration.hostname);
        });

        $('#attributes').val(configuration.attributes);
        $('#attributes').blur(async function() {
            const data = {
                attributes: $('#attributes').val()
            }

            const options = {
                method: 'POST',
                body: JSON.stringify(data),
                headers: {
                    'Content-Type': 'application/json'
                }
            }

            let response = await fetch('configuration', options);
            let configuration = await response.json();
            $('#attributes').val(configuration.attributes);
        });

        $('#password').val(configuration.password);
        $('#password').blur(async function () {
            const data = {
                password: $('#password').val()
            }

            const options = {
                method: 'POST',
                body: JSON.stringify(data),
                headers: {
                    'Content-Type': 'application/json'
                }
            }

            let response = await fetch('configuration', options);
            let configuration = await response.json();
            $('#password').val(configuration.password);
        });
    }
})();

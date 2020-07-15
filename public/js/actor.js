window.onload = function () {
    var element = document.getElementById('actor-image');
    
    if (!element) return;

    element.addEventListener('change', function (e) {
        e.preventDefault();
        var imgContainer = document.getElementById('image-container');

        if (event.target.files && event.target.files[0]) {
            var reader = new FileReader();
            var content = document.getElementById('actor-image-content');

            reader.onload = function (e) {
                if (imgContainer) {
                    imgContainer.style.display = 'block';
                }
                content.src = e.target.result;
            }

            reader.readAsDataURL(event.target.files[0]);
        }
    })

}

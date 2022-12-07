const app = Vue.createApp({
    data: function () {
        return {
            cars: [{
                "name": "2023 Mini Convertible",
                "price": "$43,390 CAD",
                "engine": "3-Cylinder Twin Power Turbocharged Engine",
                "trans": "6-speed manual",
                "speed": "205km/h",
                "image": "imgs/img_cars_Convert.jpg"
            }],
            selectedCar: null
        };

    },
    //////event listener////////
    methods: {
        selectCar: function (car) {
            console.log(car)
            this.selectedCar = car
        }
    }
}

);
app.mount('#cars');


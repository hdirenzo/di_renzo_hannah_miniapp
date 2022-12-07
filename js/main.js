const app = Vue.createApp({
    data: function () {
        return {
            cars: [],
            selectedCar: null
        };

    },

    async created() {
        const response = await fetch("includes/connect.php")
        const data = await response.json()
        console.log(data)
        this.cars = data

    },
    //////event listener////////
    methods: {
        selectCar: function (car) {
            this.selectedCar = car
        }
    }
}

);
app.mount('#cars');


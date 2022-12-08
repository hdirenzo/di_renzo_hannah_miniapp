import loader from "./components/loader.js";
import error from "./components/error.js";

const app = Vue.createApp({
    data: function () {
        return {
            isLoading: false,
            isError: false,
            cars: [],
            selectedCar: null
        };

    },
    components: {
        loader,
        error
    },

    async created() {
        this.isLoading = true
        try {
            const response = await fetch("json/data.json")
            const data = await response.json()
            // console.log(data)
            this.cars = data
        }
        catch (error) {
            console.error(error)
            this.isError = true
        }
        this.isLoading = false

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
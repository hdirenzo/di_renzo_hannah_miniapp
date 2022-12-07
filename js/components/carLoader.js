export default {
    name: 'carLoader',

    props: {
        selectedCar: Object
    },

    emits: ['loadcardata'],

    template: `
    
    <div v-for="car in cars" @click.prevent="selectCar(car)" class="carCard">

        <img class="carPics" :src="selectedCar.cars_img" :alt="selectedCar.cars_name">
<h3> {{ selectedCar.cars_name }} </h3>


       

</div>
    `,
    
    methods: {
    loadcardata() {
        this.$emit('loadcardata', this.item);
    }
}
}
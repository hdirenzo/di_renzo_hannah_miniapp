export default {
    name: 'TheLightboxComponent',

    props: ['selectedCar'],

    emits: ['closelb'],

    template: `
<div>
<div @click="closeLB" class="lightbox_close white right ">
                <i class="fa-solid fa-circle-xmark fa-4x "></i>
</div>
        <h2 class="displayName">{{ selectedCar.cars_name }}</h2>
        <h2>{{ selectedCar.cars_price }}</h2>
        <p>{{ selectedCar.cars_engine }}</p>
        <p>{{ selectedCar.cars_trans }}</p>
        <p>{{ selectedCar.cars_speed }}</p>

        <button id="more">DISCOVER MORE</button>
        <button id="book">BOOK A TEST DRIVE</button>
    </div>

    `,

    methods: {
        closeLB() {
            this.$emit('closelb');
        }
    }
}
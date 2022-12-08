export default {
    name: 'Error',
    props: {
        message: {
            type: String,
            default: "Oops! An error occured. Please try again later."
        }
    },
    template:
        `
<div>
<p> {{ message }} </p>
</div>

`
}
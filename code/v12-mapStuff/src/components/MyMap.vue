<template>
    <div>
        <MyTitle />
        <MapboxMap
            style="height: 400px; width: 600px"
            access-token="pk.eyJ1IjoicnVzaGpzIiwiYSI6ImNrZ2J5cjB5bDBsb3gyenF1aWlvM3pteTIifQ.O_gv1VxHLDvC-UlG7dTYOA"
            map-style="mapbox://styles/mapbox/streets-v12"
            :center="[9.97, 53.54]"
            :zoom="15">
            <MapboxMarker :lng-lat="[-8.6, 41.1]" />
            <MapboxNavigationControl position="bottom-right" />
        </MapboxMap>
    </div>
</template>

<script>
import { MapboxMap, MapboxMarker, MapboxNavigationControl } from '@studiometa/vue-mapbox-gl';
import MyTitle from './MyTitle.vue';

export default {
    components: {
        MapboxMap,
        MapboxMarker,
        MapboxNavigationControl,
        MyTitle
    }
}
</script>

<style scoped>

</style>
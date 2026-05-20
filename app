// MainActivity.java
package com.example.yatrimitra;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;

import com.google.android.gms.maps.*;
import com.google.android.gms.maps.model.*;

public class MainActivity extends FragmentActivity implements OnMapReadyCallback {

    private GoogleMap mMap;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        SupportMapFragment mapFragment =
                (SupportMapFragment) getSupportFragmentManager()
                        .findFragmentById(R.id.map);

        mapFragment.getMapAsync(this);
    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;

        // Sample Location
        LatLng busStop = new LatLng(12.9716, 77.5946);

        // Add Marker
        mMap.addMarker(new MarkerOptions()
                .position(busStop)
                .title("Yatri Mitra Vehicle"));

        // Zoom Camera
        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(busStop, 15));
    }
}

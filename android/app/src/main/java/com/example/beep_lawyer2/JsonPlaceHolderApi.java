package com.example.beep_lawyer2;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface JsonPlaceHolderApi {
    @POST("posts/position")
    Call<Position> sendPosition(@Body Position position);
}

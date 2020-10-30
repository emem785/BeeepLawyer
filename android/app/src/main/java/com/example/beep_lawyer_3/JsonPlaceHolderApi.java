package com.example.beep_lawyer_3;


import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;

public interface JsonPlaceHolderApi {
    @Headers({"Content-Type:application/json"})
    @POST("update_details")
    Call<Position> sendPosition(@Header("Authorization") String authorization,
                                @Header ("phone") String phone,
                                @Body Position position);
}

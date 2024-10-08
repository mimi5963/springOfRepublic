package com.kcc.rich.dto;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Builder
@ToString
public class ReservationRequest {
	private Long member_id;
	private Long restaurant_id;
	private Integer reservation_per;
	private Integer reservation_price;
	private Timestamp reservation_date;
}

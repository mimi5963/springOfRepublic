package com.kcc.rich.dto;

import java.util.List;

import com.kcc.rich.domain.MenuVO;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class RestaurantMenuResponse {
	private Long restaurant_id;
	private String menu_board;
	private List<MenuVO> menuList;
}

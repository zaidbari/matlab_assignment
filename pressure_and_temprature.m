function [ pressure, temprature ] = pressure_and_temprature(altitude)
	pressure = 29.921*((1-6.8753 * 10^-6) * altitude);
	temprature = 49.161 * (log(pressure) + 44.932);
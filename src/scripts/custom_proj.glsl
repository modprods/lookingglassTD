
uniform float uColOffset;

float get_dist(float size, float fov) {

	float dist = size / tan(radians(0.5 * fov));
	return dist;
}

float get_mod(float size, float aspect) {
	float mod = 1 / (size * aspect);
	return mod;

}
float get_sweep(float dist, float view_cone)
{
	float sweep = -dist * tan(radians(view_cone));
	return sweep;
}

float get_lerp(int view, float num_views)
{

	float lerp = float(view) / (num_views - 1.0) - 0.5;
	return lerp;

}

vec4 UserWorldToProj(vec4 worldSpaceVertPosition, int cameraIndex) {
	mat4 cam = uTDMats[cameraIndex].cam;
	mat4 proj = uTDMats[cameraIndex].proj;

	float size = 5.0;
	float fov = 35.0;
	float view_cone = 35;
	float aspect = 1.6;
	float num_views = 32;

	int view = cameraIndex * 4 + int(uColOffset);


	float my_lerp = get_lerp(int(view), num_views);

	float dist = get_dist(size,fov);

	float sweep = get_sweep(dist, view_cone);
	float my_mod = get_mod(size,aspect);

	//offset for dist
	cam[3][2] = cam[3][2] - dist;

	//offset camera in x based on view
	cam[3][0] = cam[3][0] + (my_lerp * sweep);

	//offset proj fustrum based on view
	proj[2][0] = proj[2][0] + (my_lerp * sweep * my_mod);


	vec4 out_point = proj * cam * worldSpaceVertPosition;
	return out_point;


}
// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _dxdy_scale;
    vec2 _dxdy;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _dxdy_scale = InputSize/OutputSize;
    _dxdy = _dxdy_scale/TextureSize;
    _OUT._blur_dxdy = vec2(0.00000000E+00, _dxdy.y);
    _ret_0._position1 = _r0006;
    _ret_0._tex_uv1 = TexCoord.xy;
    _ret_0._blur_dxdy = _OUT._blur_dxdy;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _OUT._blur_dxdy;
    return;
    TEX0.xy = _ret_0._tex_uv1;
    TEX1.xy = _ret_0._blur_dxdy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
vec4 _TMP3;
uniform sampler2D Texture;
vec3 _TMP8;
float _weight_sum_inv0011;
vec3 _sum0011;
float _TMP12;
vec2 _tex_coords0017;
vec2 _tex_coords0029;
vec4 _color0035;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP12 = pow(2.71828198E+00, -1.27322698E+00);
    _weight_sum_inv0011 = 1.00000000E+00/(1.00000000E+00 + 2.00000000E+00*_TMP12);
    _tex_coords0017 = TEX0.xy - TEX1.xy;
    _TMP3 = COMPAT_TEXTURE(Texture, _tex_coords0017);
    _sum0011 = _TMP12*_TMP3.xyz;
    _TMP3 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _sum0011 = _sum0011 + _TMP3.xyz;
    _tex_coords0029 = TEX0.xy + TEX1.xy;
    _TMP3 = COMPAT_TEXTURE(Texture, _tex_coords0029);
    _sum0011 = _sum0011 + _TMP12*_TMP3.xyz;
    _TMP8 = _sum0011*_weight_sum_inv0011;
    _color0035 = vec4(_TMP8.x, _TMP8.y, _TMP8.z, 1.00000000E+00);
    FragColor = _color0035;
    return;
} 
#endif

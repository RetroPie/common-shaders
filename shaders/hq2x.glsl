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

COMPAT_VARYING vec2 VARc22;
COMPAT_VARYING vec2 VARc21;
COMPAT_VARYING vec2 VARc20;
COMPAT_VARYING vec2 VARc12;
COMPAT_VARYING vec2 VARc11;
COMPAT_VARYING vec2 VARc10;
COMPAT_VARYING vec2 VARc02;
COMPAT_VARYING vec2 VARc01;
COMPAT_VARYING vec2 VARc00;

struct tex_coords {
    vec2 VARc00;
    vec2 VARc01;
    vec2 VARc02;
    vec2 VARc10;
    vec2 VARc11;
    vec2 VARc12;
    vec2 VARc20;
    vec2 VARc21;
    vec2 VARc22;
};

struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};

vec4 _oPosition1;
tex_coords _coords1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0009;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_ATTRIBUTE vec4 TexCoord;

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i != 4; i++)
               for (int j = 0; j != 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;

void main()
{
    mat4 MVPMatrix_ = transpose_(MVPMatrix);

    vec4 _oColor;
    vec2 _delta;
    tex_coords _TMP7;

    _r0009.x = dot(MVPMatrix_[0], VertexCoord);
    _r0009.y = dot(MVPMatrix_[1], VertexCoord);
    _r0009.z = dot(MVPMatrix_[2], VertexCoord);
    _r0009.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0009;
    _oColor = COLOR;
    _delta = 5.00000000E-001/TextureSize;
    _TMP7.VARc00 = TexCoord.xy + vec2(-_delta.x, -_delta.y);
    _TMP7.VARc01 = TexCoord.xy + vec2(-_delta.x, 0.00000000E+000);
    _TMP7.VARc02 = TexCoord.xy + vec2(-_delta.x, _delta.y);
    _TMP7.VARc10 = TexCoord.xy + vec2(0.00000000E+000, -_delta.y);
    _TMP7.VARc12 = TexCoord.xy + vec2(0.00000000E+000, _delta.y);
    _TMP7.VARc20 = TexCoord.xy + vec2(_delta.x, -_delta.y);
    _TMP7.VARc21 = TexCoord.xy + vec2(_delta.x, 0.00000000E+000);
    _TMP7.VARc22 = TexCoord.xy + vec2(_delta.x, _delta.y);
    VARc00 = _TMP7.VARc00;
    VARc01 = _TMP7.VARc01;
    VARc02 = _TMP7.VARc02;
    VARc10 = _TMP7.VARc10;
    VARc11 = TexCoord.xy;
    VARc12 = _TMP7.VARc12;
    VARc20 = _TMP7.VARc20;
    VARc21 = _TMP7.VARc21;
    VARc22 = _TMP7.VARc22;
    gl_Position = _r0009;
    COL0 = COLOR;
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

COMPAT_VARYING vec2 VARc22;
COMPAT_VARYING vec2 VARc21;
COMPAT_VARYING vec2 VARc20;
COMPAT_VARYING vec2 VARc12;
COMPAT_VARYING vec2 VARc11;
COMPAT_VARYING vec2 VARc10;
COMPAT_VARYING vec2 VARc02;
COMPAT_VARYING vec2 VARc01;
COMPAT_VARYING vec2 VARc00;

struct tex_coords {
    vec2 VARc00;
    vec2 VARc01;
    vec2 VARc02;
    vec2 VARc10;
    vec2 VARc11;
    vec2 VARc12;
    vec2 VARc20;
    vec2 VARc21;
    vec2 VARc22;
};

struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};

vec4 _ret_0;
float _TMP29;
float _TMP30;
vec3 _TMP28;
float _TMP27;
vec3 _TMP26;
float _TMP25;
vec3 _TMP24;
float _TMP23;
vec3 _TMP22;
float _TMP21;
float _TMP20;
float _TMP19;
float _TMP18;
vec3 _TMP17;
float _TMP16;
vec3 _TMP15;
float _TMP14;
vec3 _TMP13;
float _TMP12;
vec3 _TMP11;
vec3 _TMP10;
vec3 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
tex_coords _co1;
uniform sampler2D Texture;
vec3 _a0058;
vec3 _a0062;
vec3 _a0066;
vec3 _a0070;
vec3 _a0074;
vec3 _a0078;
vec3 _a0084;
vec3 _a0086;
vec3 _a0088;
float _TMP91;
float _x0092;
vec3 _a0098;
float _TMP101;
float _x0102;
vec3 _a0108;
float _TMP111;
float _x0112;
vec3 _a0118;
float _TMP121;
float _x0122;

 
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;

void main()
{
    vec3 _c11;
    float _md1;
    float _md2;
    float _w1;
    float _w2;
    float _w3;
    float _w4;
    float _t1;
    float _t2;
    float _ww;
    float _lc1;
    float _lc2;
    vec3 _TMP38;

    _TMP0 = COMPAT_TEXTURE(Texture, VARc00);
    _TMP1 = COMPAT_TEXTURE(Texture, VARc01);
    _TMP2 = COMPAT_TEXTURE(Texture, VARc02);
    _TMP3 = COMPAT_TEXTURE(Texture, VARc10);
    _TMP4 = COMPAT_TEXTURE(Texture, VARc11);
    _TMP5 = COMPAT_TEXTURE(Texture, VARc12);
    _TMP6 = COMPAT_TEXTURE(Texture, VARc20);
    _TMP7 = COMPAT_TEXTURE(Texture, VARc21);
    _TMP8 = COMPAT_TEXTURE(Texture, VARc22);
    _a0058 = _TMP0.xyz - _TMP8.xyz;
    _TMP9 = abs(_a0058);
    _md1 = dot(_TMP9, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _a0062 = _TMP2.xyz - _TMP6.xyz;
    _TMP10 = abs(_a0062);
    _md2 = dot(_TMP10, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _a0066 = _TMP8.xyz - _TMP4.xyz;
    _TMP11 = abs(_a0066);
    _TMP12 = dot(_TMP11, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _w1 = _TMP12*_md2;
    _a0070 = _TMP2.xyz - _TMP4.xyz;
    _TMP13 = abs(_a0070);
    _TMP14 = dot(_TMP13, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _w2 = _TMP14*_md1;
    _a0074 = _TMP0.xyz - _TMP4.xyz;
    _TMP15 = abs(_a0074);
    _TMP16 = dot(_TMP15, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _w3 = _TMP16*_md2;
    _a0078 = _TMP6.xyz - _TMP4.xyz;
    _TMP17 = abs(_a0078);
    _TMP18 = dot(_TMP17, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _w4 = _TMP18*_md1;
    _t1 = _w1 + _w3;
    _t2 = _w2 + _w4;
    _TMP19 = max(_t1, _t2);
    _ww = _TMP19 + 9.99999975E-005;
    _c11 = (_w1*_TMP0.xyz + _w2*_TMP6.xyz + _w3*_TMP8.xyz + _w4*_TMP2.xyz + _ww*_TMP4.xyz)/(_t1 + _t2 + _ww);
    _a0084 = _TMP3.xyz + _TMP5.xyz + _c11;
    _TMP20 = dot(_a0084, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _lc1 = -2.50000000E-001/(1.19999997E-001*_TMP20 + 2.50000000E-001);
    _a0086 = _TMP1.xyz + _TMP7.xyz + _c11;
    _TMP21 = dot(_a0086, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _lc2 = -2.50000000E-001/(1.19999997E-001*_TMP21 + 2.50000000E-001);
    _a0088 = _c11 - _TMP3.xyz;
    _TMP22 = abs(_a0088);
    _TMP23 = dot(_TMP22, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _x0092 = _lc1*_TMP23 + 3.24999988E-001;
    _TMP30 = min(2.50000000E-001, _x0092);
    _TMP91 = max(-5.00000007E-002, _TMP30);
    _a0098 = _c11 - _TMP7.xyz;
    _TMP24 = abs(_a0098);
    _TMP25 = dot(_TMP24, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _x0102 = _lc2*_TMP25 + 3.24999988E-001;
    _TMP30 = min(2.50000000E-001, _x0102);
    _TMP101 = max(-5.00000007E-002, _TMP30);
    _a0108 = _c11 - _TMP5.xyz;
    _TMP26 = abs(_a0108);
    _TMP27 = dot(_TMP26, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _x0112 = _lc1*_TMP27 + 3.24999988E-001;
    _TMP30 = min(2.50000000E-001, _x0112);
    _TMP111 = max(-5.00000007E-002, _TMP30);
    _a0118 = _c11 - _TMP1.xyz;
    _TMP28 = abs(_a0118);
    _TMP29 = dot(_TMP28, vec3( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000));
    _x0122 = _lc2*_TMP29 + 3.24999988E-001;
    _TMP30 = min(2.50000000E-001, _x0122);
    _TMP121 = max(-5.00000007E-002, _TMP30);
    _TMP38 = _TMP91*_TMP3.xyz + _TMP101*_TMP7.xyz + _TMP111*_TMP5.xyz + _TMP121*_TMP1.xyz + ((((1.00000000E+000 - _TMP91) - _TMP101) - _TMP111) - _TMP121)*_c11;
    _ret_0 = vec4(_TMP38.x, _TMP38.y, _TMP38.z, 1.00000000E+000);
    FragColor = _ret_0;
    return;
} 
#endif

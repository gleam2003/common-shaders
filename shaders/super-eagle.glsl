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

COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
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
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1.xy = TexCoord.xy + vec2(-_ps.x, -_ps.y);
    _OUT._t1.zw = TexCoord.xy + vec2(-_ps.x, 0.00000000E+00);
    _OUT._t2.xy = TexCoord.xy + vec2(+_ps.x, -_ps.y);
    _OUT._t2.zw = TexCoord.xy + vec2(+_ps.x + _ps.x, -_ps.y);
    _OUT._t3.xy = TexCoord.xy + vec2(-_ps.x, 0.00000000E+00);
    _OUT._t3.zw = TexCoord.xy + vec2(+_ps.x, 0.00000000E+00);
    _OUT._t4.xy = TexCoord.xy + vec2(+_ps.x + _ps.x, 0.00000000E+00);
    _OUT._t4.zw = TexCoord.xy + vec2(-_ps.x, +_ps.y);
    _OUT._t5.xy = TexCoord.xy + vec2(0.00000000E+00, +_ps.y);
    _OUT._t5.zw = TexCoord.xy + vec2(+_ps.x, +_ps.y);
    _OUT._t6.xy = TexCoord.xy + vec2(+_ps.x + _ps.x, +_ps.y);
    _OUT._t6.zw = TexCoord.xy + vec2(-_ps.x, +_ps.y + _ps.y);
    _OUT._t7.xy = TexCoord.xy + vec2(0.00000000E+00, +_ps.y + _ps.y);
    _OUT._t7.zw = TexCoord.xy + vec2(+_ps.x, +_ps.y + _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
precision mediump int;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
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
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP28;
vec3 _TMP30;
vec3 _TMP29;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP2;
vec4 _TMP1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0037;
float _TMP74;
float _TMP78;
float _TMP82;
float _TMP86;
float _TMP90;
float _TMP94;
float _TMP98;
float _TMP102;
float _TMP110;
float _TMP114;
float _TMP122;
float _TMP126;
int _x0135;
int _y0135;
int _r0135;
int _x0137;
int _y0137;
int _r0137;
int _x0139;
int _y0139;
int _r0139;
int _x0141;
int _y0141;
int _r0141;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec3 _p00;
    vec3 _p10;
    vec3 _p01;
    vec3 _p11;
    int _r1;
    _x0037 = TEX0.xy*TextureSize;
    _fp = fract(_x0037);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX3.xy);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX4.xy);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX5.xy);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX7.zw);
    _TMP74 = dot(_TMP1.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP78 = dot(_TMP2.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP82 = dot(_TMP4.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP86 = dot(_TMP5.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP90 = dot(_TMP6.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP94 = dot(_TMP8.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP98 = dot(_TMP9.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP102 = dot(_TMP10.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP110 = dot(_TMP13.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP114 = dot(_TMP14.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP122 = dot(_TMP7.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP126 = dot(_TMP11.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    if (_TMP86 != _TMP102) { 
        if (_TMP98 == _TMP90) { 
            _p10 = _TMP9.xyz;
            _p01 = _TMP9.xyz;
            if (_TMP94 == _TMP98 || _TMP90 == _TMP78) { 
                _p00 = 2.50000000E-01*(3.00000000E+00*_TMP9.xyz + _TMP5.xyz);
            } else {
                _p00 = 5.00000000E-01*(_TMP5.xyz + _TMP6.xyz);
            } 
            if (_TMP90 == _TMP122 || _TMP98 == _TMP110) { 
                _p11 = 2.50000000E-01*(3.00000000E+00*_TMP9.xyz + _TMP10.xyz);
            } else {
                _p11 = 5.00000000E-01*(_TMP9.xyz + _TMP10.xyz);
            } 
        } else {
            _p11 = 1.25000000E-01*(6.00000000E+00*_TMP10.xyz + _TMP9.xyz + _TMP6.xyz);
            _p00 = 1.25000000E-01*(6.00000000E+00*_TMP5.xyz + _TMP9.xyz + _TMP6.xyz);
            _p10 = 1.25000000E-01*(6.00000000E+00*_TMP9.xyz + _TMP5.xyz + _TMP10.xyz);
            _p01 = 1.25000000E-01*(6.00000000E+00*_TMP6.xyz + _TMP5.xyz + _TMP10.xyz);
        } 
    } else {
        if (_TMP98 != _TMP90) { 
            _p00 = _TMP5.xyz;
            _p11 = _TMP5.xyz;
            if (_TMP74 == _TMP86 || _TMP102 == _TMP126) { 
                _p01 = 2.50000000E-01*(3.00000000E+00*_TMP5.xyz + _TMP6.xyz);
            } else {
                _p01 = 5.00000000E-01*(_TMP5.xyz + _TMP6.xyz);
            } 
            if (_TMP102 == _TMP114 || _TMP82 == _TMP86) { 
                _p10 = 2.50000000E-01*(3.00000000E+00*_TMP5.xyz + _TMP9.xyz);
            } else {
                _p10 = 5.00000000E-01*(_TMP9.xyz + _TMP10.xyz);
            } 
        } else {
            _x0135 = 0;
            _y0135 = 0;
            _r0135 = 0;
            if (_TMP90 == _TMP94) { 
                _x0135 = 1;
            } else {
                if (_TMP86 == _TMP94) { 
                    _y0135 = 1;
                } 
            } 
            if (_TMP90 == _TMP110) { 
                _x0135 = _x0135 + 1;
            } else {
                if (_TMP86 == _TMP110) { 
                    _y0135 = _y0135 + 1;
                } 
            } 
            if (_x0135 <= 1) { 
                _r0135 = 1;
            } 
            if (_y0135 <= 1) { 
                _r0135 = _r0135 - 1;
            } 
            _x0137 = 0;
            _y0137 = 0;
            _r0137 = 0;
            if (_TMP90 == _TMP82) { 
                _x0137 = 1;
            } else {
                if (_TMP86 == _TMP82) { 
                    _y0137 = 1;
                } 
            } 
            if (_TMP90 == _TMP74) { 
                _x0137 = _x0137 + 1;
            } else {
                if (_TMP86 == _TMP74) { 
                    _y0137 = _y0137 + 1;
                } 
            } 
            if (_x0137 <= 1) { 
                _r0137 = 1;
            } 
            if (_y0137 <= 1) { 
                _r0137 = _r0137 - 1;
            } 
            _r1 = _r0135 + _r0137;
            _x0139 = 0;
            _y0139 = 0;
            _r0139 = 0;
            if (_TMP90 == _TMP114) { 
                _x0139 = 1;
            } else {
                if (_TMP86 == _TMP114) { 
                    _y0139 = 1;
                } 
            } 
            if (_TMP90 == _TMP126) { 
                _x0139 = _x0139 + 1;
            } else {
                if (_TMP86 == _TMP126) { 
                    _y0139 = _y0139 + 1;
                } 
            } 
            if (_x0139 <= 1) { 
                _r0139 = 1;
            } 
            if (_y0139 <= 1) { 
                _r0139 = _r0139 - 1;
            } 
            _r1 = _r1 + _r0139;
            _x0141 = 0;
            _y0141 = 0;
            _r0141 = 0;
            if (_TMP90 == _TMP78) { 
                _x0141 = 1;
            } else {
                if (_TMP86 == _TMP78) { 
                    _y0141 = 1;
                } 
            } 
            if (_TMP90 == _TMP122) { 
                _x0141 = _x0141 + 1;
            } else {
                if (_TMP86 == _TMP122) { 
                    _y0141 = _y0141 + 1;
                } 
            } 
            if (_x0141 <= 1) { 
                _r0141 = 1;
            } 
            if (_y0141 <= 1) { 
                _r0141 = _r0141 - 1;
            } 
            _r1 = _r1 + _r0141;
            if (_r1 > 0) { 
                _p10 = _TMP9.xyz;
                _p01 = _TMP9.xyz;
                _p11 = 5.00000000E-01*(_TMP5.xyz + _TMP6.xyz);
                _p00 = _p11;
            } else {
                if (_r1 < 0) { 
                    _p00 = _TMP5.xyz;
                    _p11 = _TMP5.xyz;
                    _p10 = 5.00000000E-01*(_TMP5.xyz + _TMP6.xyz);
                    _p01 = _p10;
                } else {
                    _p00 = _TMP5.xyz;
                    _p11 = _TMP5.xyz;
                    _p10 = _TMP9.xyz;
                    _p01 = _TMP9.xyz;
                } 
            } 
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.y < 5.00000000E-01) { 
            _TMP29 = _p00;
        } else {
            _TMP29 = _p10;
        } 
        _TMP28 = _TMP29;
    } else {
        if (_fp.y < 5.00000000E-01) { 
            _TMP30 = _p01;
        } else {
            _TMP30 = _p11;
        } 
        _TMP28 = _TMP30;
    } 
    _ret_0 = vec4(_TMP28.x, _TMP28.y, _TMP28.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif

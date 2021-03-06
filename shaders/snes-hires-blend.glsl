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

struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
};

vec4 _oPosition1;
uniform mat4 MVPMatrix;
vec4 _r0002;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;

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
    vec2 _oTex;

    _r0002.x = dot(MVPMatrix_[0], VertexCoord);
    _r0002.y = dot(MVPMatrix_[1], VertexCoord);
    _r0002.z = dot(MVPMatrix_[2], VertexCoord);
    _r0002.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0002;
    _oTex = TexCoord.xy;
    gl_Position = _r0002;
    TEX0.xy = TexCoord.xy;
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

struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
};

vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _c0004;
COMPAT_VARYING vec4 TEX0;

uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;

void main()
{
    vec2 _ps;
    vec4 _l;
    vec4 _r;

    _ps = vec2(float((1.00000000E+000/TextureSize).x), float((1.00000000E+000/TextureSize).y));
    _c0004 = vec2(TEX0.x - float(_ps.x), TEX0.y);
    _l = COMPAT_TEXTURE(Texture, _c0004);
    _r = COMPAT_TEXTURE(Texture, TEX0.xy);
    if (InputSize.x > 2.56000000E+002) { 
        _TMP0 = _l + 5.00000000E-001*(_r - _l);
    } else {
        _TMP0 = _r;
    } 
    FragColor = _TMP0;
    return;
} 
#endif

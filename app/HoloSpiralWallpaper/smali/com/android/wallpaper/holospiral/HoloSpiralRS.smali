.class public Lcom/android/wallpaper/holospiral/HoloSpiralRS;
.super Ljava/lang/Object;
.source "HoloSpiralRS.java"


# static fields
.field private static final BG_COLOR_BLACK:I

.field private static final BG_COLOR_BLUE:I

.field private static final POINTS_COLOR_AQUA:I

.field private static final POINTS_COLOR_BLUE:I

.field private static final POINTS_COLOR_GREEN:I


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mResources:Landroid/content/res/Resources;

.field private mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x0

    const/16 v4, 0xff

    .line 58
    const/16 v0, 0xb3

    invoke-static {v0, v5, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_BLUE:I

    .line 59
    const/16 v0, 0xd2

    const/16 v1, 0xa6

    const/16 v2, 0x33

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_GREEN:I

    .line 60
    const/16 v0, 0xdc

    const/16 v1, 0x26

    const/16 v2, 0x78

    const/16 v3, 0x94

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_AQUA:I

    .line 61
    const/16 v0, 0x53

    invoke-static {v4, v6, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->BG_COLOR_BLACK:I

    .line 62
    const/16 v0, 0x8

    invoke-static {v4, v0, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->BG_COLOR_BLUE:I

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "renderer"
    .parameter "resources"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 66
    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;)V

    .line 70
    return-void
.end method

.method private static convertColor(I)Landroid/renderscript/Float4;
    .locals 6
    .parameter "color"

    .prologue
    const/high16 v5, 0x437f

    .line 253
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v4, v5

    .line 254
    .local v3, red:F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float v2, v4, v5

    .line 255
    .local v2, green:F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v4, v5

    .line 256
    .local v1, blue:F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v4, v5

    .line 257
    .local v0, alpha:F
    new-instance v4, Landroid/renderscript/Float4;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/renderscript/Float4;-><init>(FFFF)V

    return-object v4
.end method

.method private createBackgroundMesh()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/high16 v9, -0x4080

    const/4 v8, 0x0

    .line 189
    new-instance v3, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    iget-object v6, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v7, 0x4

    invoke-direct {v3, v6, v7}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 191
    .local v3, fullQuad:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    new-instance v4, Landroid/renderscript/Float3;

    invoke-direct {v4, v9, v11, v10}, Landroid/renderscript/Float3;-><init>(FFF)V

    .line 192
    .local v4, topLeft:Landroid/renderscript/Float3;
    new-instance v1, Landroid/renderscript/Float3;

    invoke-direct {v1, v9, v9, v10}, Landroid/renderscript/Float3;-><init>(FFF)V

    .line 193
    .local v1, bottomLeft:Landroid/renderscript/Float3;
    new-instance v5, Landroid/renderscript/Float3;

    invoke-direct {v5, v11, v11, v10}, Landroid/renderscript/Float3;-><init>(FFF)V

    .line 194
    .local v5, topRight:Landroid/renderscript/Float3;
    new-instance v2, Landroid/renderscript/Float3;

    invoke-direct {v2, v11, v9, v10}, Landroid/renderscript/Float3;-><init>(FFF)V

    .line 196
    .local v2, bottomRight:Landroid/renderscript/Float3;
    invoke-virtual {v3, v8, v4, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 197
    sget v6, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->BG_COLOR_BLUE:I

    invoke-static {v6}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->convertColor(I)Landroid/renderscript/Float4;

    move-result-object v6

    invoke-virtual {v3, v8, v6, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 199
    invoke-virtual {v3, v12, v1, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 200
    sget v6, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->BG_COLOR_BLACK:I

    invoke-static {v6}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->convertColor(I)Landroid/renderscript/Float4;

    move-result-object v6

    invoke-virtual {v3, v12, v6, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 202
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 203
    const/4 v6, 0x2

    sget v7, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->BG_COLOR_BLUE:I

    invoke-static {v7}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->convertColor(I)Landroid/renderscript/Float4;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 205
    const/4 v6, 0x3

    invoke-virtual {v3, v6, v2, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 206
    const/4 v6, 0x3

    sget v7, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->BG_COLOR_BLACK:I

    invoke-static {v7}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->convertColor(I)Landroid/renderscript/Float4;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 208
    invoke-virtual {v3}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyAll()V

    .line 210
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v6, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v6}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 211
    .local v0, backgroundBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    sget-object v6, Landroid/renderscript/Mesh$Primitive;->TRIANGLE_STRIP:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v0, v6}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 212
    invoke-virtual {v3}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 213
    iget-object v6, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v0}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gBackgroundMesh(Landroid/renderscript/Mesh;)V

    .line 214
    return-void
.end method

.method private createFragmentPrograms()V
    .locals 6

    .prologue
    .line 136
    new-instance v0, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 137
    .local v0, backgroundBuilder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f04

    invoke-virtual {v0, v4, v5}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 138
    invoke-virtual {v0}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v2

    .line 139
    .local v2, programFragmentBackground:Landroid/renderscript/ProgramFragment;
    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v4, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPFBackground(Landroid/renderscript/ProgramFragment;)V

    .line 141
    new-instance v1, Landroid/renderscript/ProgramFragment$Builder;

    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 142
    .local v1, geometryBuilder:Landroid/renderscript/ProgramFragment$Builder;
    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f040001

    invoke-virtual {v1, v4, v5}, Landroid/renderscript/ProgramFragment$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 143
    sget-object v4, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v1, v4}, Landroid/renderscript/ProgramFragment$Builder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 144
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragment$Builder;->create()Landroid/renderscript/ProgramFragment;

    move-result-object v3

    .line 145
    .local v3, programFragmentGeometry:Landroid/renderscript/ProgramFragment;
    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v4}, Landroid/renderscript/Sampler;->CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/ProgramFragment;->bindSampler(Landroid/renderscript/Sampler;I)V

    .line 146
    iget-object v4, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v4, v3}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPFGeometry(Landroid/renderscript/ProgramFragment;)V

    .line 147
    return-void
.end method

.method private createPointGeometry()V
    .locals 14

    .prologue
    const/high16 v4, 0x41b8

    .line 160
    new-instance v1, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v2, 0x64

    invoke-direct {v1, v0, v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 162
    .local v1, innerPoints:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    const/high16 v2, 0x4248

    const/high16 v3, 0x40a0

    sget v5, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_BLUE:I

    sget v6, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_GREEN:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->generateSpiral(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;FFFII)V

    .line 165
    new-instance v12, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v12, v0}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 166
    .local v12, innerPointBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    sget-object v0, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v12, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 167
    invoke-virtual {v1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 168
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v12}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gInnerGeometry(Landroid/renderscript/Mesh;)V

    .line 170
    new-instance v6, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;

    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/16 v2, 0x32

    invoke-direct {v6, v0, v2}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 172
    .local v6, outerPoints:Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;
    const/high16 v7, 0x41f0

    const/high16 v8, 0x4120

    sget v10, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_AQUA:I

    sget v11, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->POINTS_COLOR_AQUA:I

    move-object v5, p0

    move v9, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->generateSpiral(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;FFFII)V

    .line 175
    new-instance v13, Landroid/renderscript/Mesh$AllocationBuilder;

    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v13, v0}, Landroid/renderscript/Mesh$AllocationBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 176
    .local v13, outerPointBuilder:Landroid/renderscript/Mesh$AllocationBuilder;
    sget-object v0, Landroid/renderscript/Mesh$Primitive;->POINT:Landroid/renderscript/Mesh$Primitive;

    invoke-virtual {v13, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 177
    invoke-virtual {v6}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/renderscript/Mesh$AllocationBuilder;->addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;

    .line 178
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v13}, Landroid/renderscript/Mesh$AllocationBuilder;->create()Landroid/renderscript/Mesh;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gOuterGeometry(Landroid/renderscript/Mesh;)V

    .line 179
    return-void
.end method

.method private createScript()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f040002

    invoke-direct {v0, v1, v2, v3}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;-><init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    .line 101
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gNearPlane(F)V

    .line 102
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    const/high16 v1, 0x425c

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gFarPlane(F)V

    .line 104
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createVertexPrograms()V

    .line 105
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createFragmentPrograms()V

    .line 106
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createStorePrograms()V

    .line 108
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createPointGeometry()V

    .line 109
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createBackgroundMesh()V

    .line 110
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createTextures()V

    .line 111
    return-void
.end method

.method private createStorePrograms()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v1}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 151
    .local v0, builder:Landroid/renderscript/ProgramStore$Builder;
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 153
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPSGeometry(Landroid/renderscript/ProgramStore;)V

    .line 154
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 156
    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPSBackground(Landroid/renderscript/ProgramStore;)V

    .line 157
    return-void
.end method

.method private createTextures()V
    .locals 5

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    const/high16 v3, 0x7f02

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 185
    .local v1, pointTexture:Landroid/renderscript/Allocation;
    iget-object v2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v2, v1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPointTexture(Landroid/renderscript/Allocation;)V

    .line 186
    return-void
.end method

.method private createVertexPrograms()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 114
    new-instance v4, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;

    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;-><init>(Landroid/renderscript/RenderScript;I)V

    .line 116
    .local v4, vertexShaderConstants:Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v5, v4}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->bind_gVSConstants(Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;)V

    .line 117
    const/high16 v5, 0x4296

    invoke-virtual {v4, v7, v5, v7}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->set_maxPointSize(IFZ)V

    .line 118
    invoke-virtual {v4}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->copyAll()V

    .line 120
    new-instance v0, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v0, v5}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 121
    .local v0, backgroundBuilder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f040003

    invoke-virtual {v0, v5, v6}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 122
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v2

    .line 124
    .local v2, programVertexBackground:Landroid/renderscript/ProgramVertex;
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v5, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPVBackground(Landroid/renderscript/ProgramVertex;)V

    .line 126
    new-instance v1, Landroid/renderscript/ProgramVertex$Builder;

    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-direct {v1, v5}, Landroid/renderscript/ProgramVertex$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 127
    .local v1, geometryBuilder:Landroid/renderscript/ProgramVertex$Builder;
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f040004

    invoke-virtual {v1, v5, v6}, Landroid/renderscript/ProgramVertex$Builder;->setShader(Landroid/content/res/Resources;I)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 128
    invoke-virtual {v4}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/renderscript/ProgramVertex$Builder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 129
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-static {v5}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/renderscript/ProgramVertex$Builder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertex$Builder;

    .line 130
    invoke-virtual {v1}, Landroid/renderscript/ProgramVertex$Builder;->create()Landroid/renderscript/ProgramVertex;

    move-result-object v3

    .line 131
    .local v3, programVertexGeometry:Landroid/renderscript/ProgramVertex;
    invoke-virtual {v4}, Lcom/android/wallpaper/holospiral/ScriptField_VertexShaderConstants_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3, v5, v7}, Landroid/renderscript/ProgramVertex;->bindConstants(Landroid/renderscript/Allocation;I)V

    .line 132
    iget-object v5, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v5, v3}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gPVGeometry(Landroid/renderscript/ProgramVertex;)V

    .line 133
    return-void
.end method

.method private generateSpiral(Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;FFFII)V
    .locals 19
    .parameter "points"
    .parameter "depth"
    .parameter "radius"
    .parameter "separationDegrees"
    .parameter "primaryColor"
    .parameter "secondaryColor"

    .prologue
    .line 219
    const/high16 v16, 0x43b4

    div-float v16, p4, v16

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    const v17, 0x40490fdb

    mul-float v14, v16, v17

    .line 220
    .local v14, separationRads:F
    invoke-virtual/range {p1 .. p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->getAllocation()Landroid/renderscript/Allocation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 222
    .local v15, size:I
    const/high16 v16, 0x4000

    div-float v5, p2, v16

    .line 223
    .local v5, halfDepth:F
    const/4 v12, 0x0

    .line 225
    .local v12, radians:F
    invoke-static/range {p5 .. p5}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->convertColor(I)Landroid/renderscript/Float4;

    move-result-object v10

    .line 226
    .local v10, primary:Landroid/renderscript/Float4;
    invoke-static/range {p6 .. p6}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->convertColor(I)Landroid/renderscript/Float4;

    move-result-object v13

    .line 228
    .local v13, secondary:Landroid/renderscript/Float4;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v15, :cond_0

    .line 229
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v8, v16, v17

    .line 230
    .local v8, percentage:F
    new-instance v9, Landroid/renderscript/Float3;

    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p3

    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p3

    mul-float v18, v8, p2

    sub-float v18, v18, v5

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/renderscript/Float3;-><init>(FFF)V

    .line 233
    .local v9, position:Landroid/renderscript/Float3;
    const/high16 v16, 0x4000

    div-float v16, v12, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move v11, v0

    .line 235
    .local v11, r:F
    new-instance v4, Landroid/renderscript/Float4;

    invoke-direct {v4}, Landroid/renderscript/Float4;-><init>()V

    .line 236
    .local v4, color:Landroid/renderscript/Float4;
    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->x:F

    move/from16 v16, v0

    move-object v0, v13

    iget v0, v0, Landroid/renderscript/Float4;->x:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Landroid/renderscript/Float4;->x:F

    .line 237
    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->y:F

    move/from16 v16, v0

    move-object v0, v13

    iget v0, v0, Landroid/renderscript/Float4;->y:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Landroid/renderscript/Float4;->y:F

    .line 238
    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->z:F

    move/from16 v16, v0

    move-object v0, v13

    iget v0, v0, Landroid/renderscript/Float4;->z:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->z:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Landroid/renderscript/Float4;->z:F

    .line 239
    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->w:F

    move/from16 v16, v0

    move-object v0, v13

    iget v0, v0, Landroid/renderscript/Float4;->w:F

    move/from16 v17, v0

    move-object v0, v10

    iget v0, v0, Landroid/renderscript/Float4;->w:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object v1, v4

    iput v0, v1, Landroid/renderscript/Float4;->w:F

    .line 241
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v9

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_position(ILandroid/renderscript/Float3;Z)V

    .line 242
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v4

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->set_color(ILandroid/renderscript/Float4;Z)V

    .line 244
    add-float/2addr v12, v14

    .line 245
    const v16, 0x40c90fdb

    div-float v16, v12, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 246
    .local v7, multiplier:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x4000

    mul-float v16, v16, v17

    const v17, 0x40490fdb

    mul-float v16, v16, v17

    sub-float v12, v12, v16

    .line 228
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 249
    .end local v4           #color:Landroid/renderscript/Float4;
    .end local v7           #multiplier:I
    .end local v8           #percentage:F
    .end local v9           #position:Landroid/renderscript/Float3;
    .end local v11           #r:F
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/wallpaper/holospiral/ScriptField_VertexColor_s;->copyAll()V

    .line 250
    return-void
.end method


# virtual methods
.method public init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "renderer"
    .parameter "resources"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 74
    iput-object p2, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mResources:Landroid/content/res/Resources;

    .line 75
    invoke-direct {p0}, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->createScript()V

    .line 76
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public resize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->invoke_resize(FF)V

    .line 97
    return-void
.end method

.method public setOffset(FFII)V
    .locals 1
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v0, p1}, Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;->set_gXOffset(F)V

    .line 80
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mScript:Lcom/android/wallpaper/holospiral/ScriptC_holo_spiral;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/wallpaper/holospiral/HoloSpiralRS;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->bindRootScript(Landroid/renderscript/Script;)V

    .line 93
    return-void
.end method

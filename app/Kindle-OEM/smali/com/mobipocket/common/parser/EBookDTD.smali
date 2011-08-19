.class public Lcom/mobipocket/common/parser/EBookDTD;
.super Ljava/lang/Object;
.source "EBookDTD.java"


# static fields
.field public static final HTCF_All:I = -0x1

.field public static final HTCF_Block:I = 0x2

.field public static final HTCF_Cell:I = 0x10

.field public static final HTCF_Definition:I = 0x400

.field public static final HTCF_DefinitionList:I = 0x200

.field public static final HTCF_Div:I = 0x10000

.field public static final HTCF_Flow:I = 0x32a07

.field public static final HTCF_Form:I = 0x2000

.field public static final HTCF_FormObject:I = 0x4000

.field public static final HTCF_Inline:I = 0x1

.field public static final HTCF_List:I = 0x800

.field public static final HTCF_ListLine:I = 0x1000

.field public static final HTCF_Misc:I = 0x8

.field public static final HTCF_NCObject:I = 0x20000

.field public static final HTCF_Object:I = 0x4

.field public static final HTCF_Option:I = 0x8000

.field public static final HTCF_Root:I = 0x100

.field public static final HTCF_Row:I = 0x20

.field public static final HTCF_SubFlow:I = 0xd400

.field public static final HTCF_Table:I = 0x80

.field public static final HTCF_TableSection:I = 0x40

.field public static final HTC_Block:S = 0x1s

.field public static final HTC_Cell:S = 0x4s

.field public static final HTC_Definition:S = 0xas

.field public static final HTC_DefinitionList:S = 0x9s

.field public static final HTC_Div:S = 0x10s

.field public static final HTC_Form:S = 0xds

.field public static final HTC_FormObject:S = 0xes

.field public static final HTC_Inline:S = 0x0s

.field public static final HTC_Last:S = 0x11s

.field public static final HTC_List:S = 0xbs

.field public static final HTC_ListLine:S = 0xcs

.field public static final HTC_Misc:S = 0x3s

.field public static final HTC_NCObject:S = 0x11s

.field public static final HTC_Object:S = 0x2s

.field public static final HTC_Option:S = 0xfs

.field public static final HTC_Root:S = 0x8s

.field public static final HTC_Row:S = 0x5s

.field public static final HTC_Table:S = 0x7s

.field public static final HTC_TableSection:S = 0x6s

.field public static final HTMLAUTOCLOSE_MASK:S = 0x40s

.field public static final HTMLEMPTY_MASK:S = 0x80s

.field public static final HTMLGROUP_MASK:S = 0x1fs

.field public static final HTMLISTAG_MASK:S = 0x20s

.field public static final HTMLKEEPSTR_MASK:S = 0x100s

.field public static final kgHTMLDTDClosing:[[I

.field public static final kgHTMLDTDContaining:[I

.field public static final kgHTMLTagInfo:[S


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    const/4 v3, 0x2

    .line 71
    new-array v0, v4, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLDTDClosing:[[I

    .line 123
    new-array v0, v4, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLDTDContaining:[I

    .line 154
    const/16 v0, 0x95

    new-array v0, v0, [S

    fill-array-data v0, :array_13

    sput-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    return-void

    .line 71
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0xdet 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xf7t 0xfet 0x3t 0x0t
        0xf7t 0xfet 0x3t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x17t 0xfet 0x3t 0x0t
        0x17t 0xfet 0x3t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x37t 0xfet 0x3t 0x0t
        0x37t 0xfet 0x3t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x77t 0xfet 0x3t 0x0t
        0x77t 0xfet 0x3t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x77t 0xfet 0x3t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0xfet 0x3t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x7t 0xfet 0x3t 0x0t
        0x7t 0xfet 0x3t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0xfet 0x3t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x10t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xf7t 0xfet 0x3t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x7t 0xdet 0x0t 0x0t
        0x7t 0xdet 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t
    .end array-data

    .line 123
    :array_12
    .array-data 0x4
        0x8ft 0x6at 0xfft 0xfft
        0x8ft 0x6at 0xfft 0xfft
        0x4t 0x0t 0x2t 0x0t
        0x8ft 0x6at 0xfft 0xfft
        0x87t 0xfet 0x3t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x8ft 0x6at 0xfft 0xfft
        0x0t 0x4t 0x0t 0x0t
        0x8ft 0x6at 0xfft 0xfft
        0x8ft 0x7at 0xfft 0xfft
        0x8ft 0x6at 0xfft 0xfft
        0x8ft 0x6at 0xfft 0xfft
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x8ft 0x6at 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 154
    :array_13
    .array-data 0x2
        0x0t 0x0t
        0x28t 0x0t
        0x23t 0x0t
        0xa2t 0x0t
        0xa2t 0x0t
        0x23t 0x1t
        0x23t 0x0t
        0x21t 0x0t
        0x21t 0x0t
        0x21t 0x0t
        0x21t 0x0t
        0x21t 0x0t
        0x21t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x61t 0x0t
        0xa0t 0x0t
        0xa2t 0x0t
        0x21t 0x0t
        0x61t 0x0t
        0x30t 0x0t
        0x20t 0x0t
        0x2bt 0x0t
        0x2bt 0x0t
        0x6ct 0x0t
        0x29t 0x0t
        0x6at 0x0t
        0x6at 0x0t
        0x27t 0x0t
        0x65t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x20t 0x0t
        0x31t 0x0t
        0xa2t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0xa2t 0x0t
        0x22t 0x0t
        0x0t 0x1t
        0x22t 0x0t
        0xa2t 0x0t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x1t
        0x66t 0x0t
        0x66t 0x0t
        0x66t 0x0t
        0x22t 0x0t
        0xa2t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x23t 0x0t
        0x2dt 0x0t
        0xaet 0x0t
        0xaet 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x6ft 0x0t
        0x2et 0x0t
        0xaet 0x1t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x0t
        0x31t 0x1t
        0x0t 0x1t
        0x0t 0x1t
        0x31t 0x0t
        0x31t 0x0t
        0x0t 0x0t
        0xa2t 0x0t
        0x63t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x20t 0x0t
        0x0t 0x1t
        0x20t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x63t 0x0t
        0x0t 0x1t
        0x0t 0x0t
        0x20t 0x1t
        0x20t 0x1t
        0x0t 0x0t
        0xa2t 0x0t
        0x0t 0x1t
        0x0t 0x1t
        0x0t 0x0t
        0x0t 0x1t
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlGroupCloses(ZBB)Z
    .locals 8
    .parameter "close"
    .parameter "closingGroup"
    .parameter "tryToCloseGroup"

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 447
    if-nez p0, :cond_1

    .line 448
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLDTDClosing:[[I

    aget-object v0, v0, p1

    aget v0, v0, v4

    int-to-long v0, v0

    shl-long/2addr v2, p2

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    move v0, v5

    .line 450
    :goto_0
    return v0

    :cond_0
    move v0, v4

    .line 448
    goto :goto_0

    .line 450
    :cond_1
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLDTDClosing:[[I

    aget-object v0, v0, p1

    aget v0, v0, v5

    int-to-long v0, v0

    shl-long/2addr v2, p2

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public static htmlOpeningAutorized(BB)Z
    .locals 4
    .parameter "container_group"
    .parameter "opening_group"

    .prologue
    .line 435
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLDTDContaining:[I

    aget v0, v0, p0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static htmlTagGroup(S)B
    .locals 1
    .parameter "tag"

    .prologue
    .line 409
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    aget-short v0, v0, p0

    and-int/lit8 v0, v0, 0x1f

    int-to-byte v0, v0

    return v0
.end method

.method public static isAttributeStringCoded(S)Z
    .locals 1
    .parameter "attr"

    .prologue
    .line 424
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    aget-short v0, v0, p0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAttributeSupported(S)Z
    .locals 1
    .parameter "attr"

    .prologue
    .line 419
    if-ltz p0, :cond_0

    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    array-length v0, v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTMLAutoclosingTag(S)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 372
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    aget-short v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTMLGroupAsItself(B)Z
    .locals 2
    .parameter "tagGroup"

    .prologue
    const/4 v1, 0x1

    .line 399
    shl-int v0, v1, p0

    and-int/lit16 v0, v0, 0x452

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTMLTag(S)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 352
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    aget-short v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTMLTagEmpty(S)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 362
    sget-object v0, Lcom/mobipocket/common/parser/EBookDTD;->kgHTMLTagInfo:[S

    aget-short v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTagInsideTableComponent(S)Z
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    .line 390
    invoke-static {p0}, Lcom/mobipocket/common/parser/EBookDTD;->htmlTagGroup(S)B

    move-result v0

    shl-int v0, v1, v0

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTagTableComponent(S)Z
    .locals 2
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    .line 382
    invoke-static {p0}, Lcom/mobipocket/common/parser/EBookDTD;->htmlTagGroup(S)B

    move-result v0

    shl-int v0, v1, v0

    and-int/lit16 v0, v0, 0xf0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

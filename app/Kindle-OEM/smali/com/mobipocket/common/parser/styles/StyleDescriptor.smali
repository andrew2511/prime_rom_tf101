.class public Lcom/mobipocket/common/parser/styles/StyleDescriptor;
.super Ljava/lang/Object;
.source "StyleDescriptor.java"


# static fields
.field public static final ALIGNNOTSET:S = 0x0s

.field public static final BS_Circle:S = 0x1s

.field public static final BS_Club:S = 0x5s

.field public static final BS_Decimal:S = 0x64s

.field public static final BS_Diamond:S = 0x4s

.field public static final BS_Disc:S = 0x7s

.field public static final BS_Heart:S = 0x3s

.field public static final BS_LowerAlpha:S = 0x67s

.field public static final BS_LowerRoman:S = 0x65s

.field public static final BS_Spade:S = 0x2s

.field public static final BS_Square:S = 0x6s

.field public static final BS_Star:S = 0x0s

.field public static final BS_UpperAlpha:S = 0x68s

.field public static final BS_UpperRoman:S = 0x66s

.field public static final BT_None:S = 0x0s

.field public static final BT_Ordered:S = 0x2s

.field public static final BT_Unordered:S = 0x1s

.field public static final CENTER:S = 0x3s

.field public static DEFAULTATTR_MASK:I = 0x0

.field public static DIMUNIT_MASK:I = 0x0

.field public static FONTHEIGHT_VALUE:I = 0x0

.field public static final JUSTIFY:S = 0x4s

.field public static final LEFT:S = 0x1s

.field public static NEG_MASK:I = 0x0

.field public static PERCENT_VALUE:I = 0x0

.field public static final POETRY:S = 0x5s

.field public static final RIGHT:S = 0x2s

.field public static linkColor:I

.field public static linkUnderlined:Z


# instance fields
.field private final _DefaultFont:Lcom/amazon/system/drawing/Font;

.field private final _FontFactory:Lcom/amazon/system/drawing/FontFactory;

.field private _ParagraphStyle:S

.field public _TextProperties:Lcom/mobipocket/common/parser/TextProperties;

.field private _Title:Ljava/lang/String;

.field private blockquoteIndent:I

.field private bulletStyle:S

.field private bulletType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/high16 v0, -0x8000

    sput v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->NEG_MASK:I

    .line 24
    const/high16 v0, 0x4000

    sput v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    .line 25
    const/high16 v0, 0x2000

    sput v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->PERCENT_VALUE:I

    .line 26
    const/high16 v0, 0x1000

    sput v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->FONTHEIGHT_VALUE:I

    .line 27
    const/high16 v0, 0x3000

    sput v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/drawing/FontFactory;Lcom/mobipocket/common/parser/TextProperties;S)V
    .locals 2
    .parameter "fontFactory"
    .parameter "defaultTextProperties"
    .parameter "paragraphStyle"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 99
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    .line 100
    iput-object p2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 101
    iput-short p3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    .line 102
    iput v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    .line 103
    iput-short v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    .line 104
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 1
    .parameter "toCopy"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 110
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    .line 111
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 112
    iget-short v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    .line 113
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    .line 114
    iget v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    iput v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    .line 115
    iget-short v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    .line 116
    iget-short v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TextProperties;)V
    .locals 1
    .parameter "toCopy"
    .parameter "textProperties"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 122
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    .line 123
    iput-object p2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 124
    iget-short v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    .line 125
    iget-object v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    .line 126
    iget v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    iput v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    .line 127
    iget-short v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    .line 128
    iget-short v0, p1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    .line 129
    return-void
.end method


# virtual methods
.method public addBqIndent(I)V
    .locals 0
    .parameter "bqIndentSize"

    .prologue
    .line 146
    iput p1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    .line 147
    return-void
.end method

.method public addLinkProperties()V
    .locals 8

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v7

    .line 134
    .local v7, font:Lcom/amazon/system/drawing/Font;
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v7}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v1

    invoke-interface {v7}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v2

    sget-boolean v3, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->linkUnderlined:Z

    invoke-interface {v7}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7, v1, v2, v3}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->isStriked()Z

    move-result v2

    sget v3, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->linkColor:I

    iget-object v4, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/TextProperties;->getBGTextColor()I

    move-result v4

    iget-object v5, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/TextProperties;->getDisplacement()I

    move-result v5

    iget-object v6, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/TextProperties;->getLanguageID()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/amazon/system/drawing/Font;ZIIII)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 137
    return-void
.end method

.method public addTitleProperty(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public derive(SLcom/mobipocket/common/parser/AttributeStack;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 153
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->tagToCSS:[S

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->tagToCSS:[S

    aget-short v7, v0, p1

    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->FONT_ACTION_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_1
    :pswitch_0
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->DISPLAY_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 434
    :pswitch_2
    const/16 v0, 0x34

    invoke-virtual {p2, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 435
    if-lez v0, :cond_2

    .line 436
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;I)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 437
    :cond_2
    const/16 v0, 0x6d

    invoke-virtual {p2, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 438
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 440
    sget v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    .line 442
    :goto_2
    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->NEG_MASK:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    or-int/2addr v0, v2

    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v0, v2

    .line 446
    :goto_3
    if-eqz v1, :cond_e

    .line 448
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    add-int/lit8 v0, v0, 0x3

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    iget-object v4, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v4}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/amazon/system/drawing/FontTools;->setHTMLFontSize(ILcom/amazon/system/drawing/Font;I)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto :goto_0

    .line 164
    :pswitch_3
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->CHAR_HEIGHT_ACTION_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEIGHT_ACTION_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    :goto_4
    :pswitch_4
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->BOLD_ACTION_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 226
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BOLD_ACTION_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    :goto_5
    :pswitch_6
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->ITALIC_ACTION_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 259
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ITALIC_ACTION_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    :goto_6
    :pswitch_8
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->UNDERLINE_ACTION_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_5

    .line 292
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNDERLINE_ACTION_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    :goto_7
    :pswitch_a
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->STRIKE_OUT_ACTION_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_6

    .line 319
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STRIKE_OUT_ACTION_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    :goto_8
    :pswitch_c
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->VERTICAL_ALIGN_INDEX:S

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FONT_FACE_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    :goto_9
    :sswitch_0
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->FONT_FACE_INDEX:S

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_7

    .line 362
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FONT_FACE_INDEX pb for tag :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 168
    :pswitch_e
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazon/system/drawing/Font;->derive(I)Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_4

    .line 173
    :pswitch_f
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->CHAR_HEIGHT_INDEX:S

    aget-byte v0, v0, v1

    .line 174
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    add-int/lit8 v0, v0, 0x3

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    iget-object v4, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v4}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/amazon/system/drawing/FontTools;->setHTMLFontSize(ILcom/amazon/system/drawing/Font;I)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_4

    .line 183
    :pswitch_10
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->CHAR_HEIGHT_INDEX:S

    aget-byte v0, v0, v1

    .line 184
    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v2

    .line 186
    const/4 v3, 0x0

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_a
    if-ge v2, v0, :cond_4

    .line 188
    sget-object v4, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v4, v4, v7

    sget-short v5, Lcom/mobipocket/common/parser/styles/EBookCSS;->CHAR_HEIGHT_ACTION_INDEX:S

    aget-byte v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_b
    invoke-static {v1, v3, v4}, Lcom/amazon/system/drawing/FontTools;->getDifferentSize(Lcom/amazon/system/drawing/Font;IZ)I

    move-result v3

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 188
    :cond_3
    const/4 v4, 0x0

    goto :goto_b

    .line 190
    :cond_4
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v1, v3}, Lcom/amazon/system/drawing/Font;->derive(I)Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_4

    .line 202
    :pswitch_11
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_5

    .line 209
    :pswitch_12
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->BOLD_INDEX:S

    aget-byte v0, v0, v1

    if-lez v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    const/4 v3, 0x1

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_5

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_5

    .line 235
    :pswitch_13
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_6

    .line 242
    :pswitch_14
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->ITALIC_INDEX:S

    aget-byte v0, v0, v1

    if-lez v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_6

    .line 250
    :cond_6
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_6

    .line 268
    :pswitch_15
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_7

    .line 275
    :pswitch_16
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->UNDERLINE_INDEX:S

    aget-byte v0, v0, v1

    if-lez v0, :cond_7

    .line 277
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_7

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/system/drawing/Font;->derive(ZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_7

    .line 301
    :pswitch_17
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getDisplacement()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;ZI)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_8

    .line 306
    :pswitch_18
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->STRIKE_OUT_INDEX:S

    aget-byte v0, v0, v1

    if-lez v0, :cond_8

    .line 308
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getDisplacement()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;ZI)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_8

    .line 312
    :cond_8
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getDisplacement()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;ZI)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_8

    .line 327
    :sswitch_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getDescent()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 328
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->isStriked()Z

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;ZI)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_9

    .line 333
    :sswitch_2
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 334
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->isStriked()Z

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;ZI)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_9

    .line 351
    :pswitch_19
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v5

    .line 352
    new-instance v6, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v8, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_FontFactory:Lcom/amazon/system/drawing/FontFactory;

    invoke-interface {v1}, Lcom/amazon/system/drawing/FontFactory;->getMonospacedFontFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v2

    invoke-interface {v5}, Lcom/amazon/system/drawing/Font;->isBold()Z

    move-result v3

    invoke-interface {v5}, Lcom/amazon/system/drawing/Font;->isItalic()Z

    move-result v4

    invoke-interface {v5}, Lcom/amazon/system/drawing/Font;->isUnderlined()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/system/drawing/FontFactory;->getFont(Ljava/lang/String;IZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v6, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_1

    .line 370
    :pswitch_1a
    new-instance v0, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0xffffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/amazon/system/drawing/Font;ZIIII)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    .line 371
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_1

    .line 380
    :pswitch_1b
    const/16 v0, 0x33

    invoke-virtual {p2, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 381
    sparse-switch v0, :sswitch_data_1

    .line 405
    :cond_9
    :goto_c
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->INDENT_INDEX:S

    aget-byte v0, v0, v1

    if-lez v0, :cond_0

    .line 409
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->BULLET_STYLE_INDEX:S

    aget-byte v0, v0, v1

    int-to-short v0, v0

    .line 410
    sget-object v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v1, v1, v7

    sget-short v2, Lcom/mobipocket/common/parser/styles/EBookCSS;->BULLET_TYPE_INDEX:S

    aget-byte v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 412
    const/16 v0, 0x42

    invoke-virtual {p2, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 413
    packed-switch v0, :pswitch_data_8

    .line 419
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->BULLET_STYLE_INDEX:S

    aget-byte v0, v0, v1

    int-to-short v0, v0

    .line 426
    :cond_a
    :goto_d
    iget v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    sget-object v2, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v2, v2, v7

    sget-short v3, Lcom/mobipocket/common/parser/styles/EBookCSS;->INDENT_INDEX:S

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    .line 427
    sget-object v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v1, v1, v7

    sget-short v2, Lcom/mobipocket/common/parser/styles/EBookCSS;->BULLET_TYPE_INDEX:S

    aget-byte v1, v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    .line 428
    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    goto/16 :goto_0

    .line 384
    :sswitch_3
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto :goto_c

    .line 387
    :sswitch_4
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto :goto_c

    .line 390
    :sswitch_5
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto :goto_c

    .line 393
    :sswitch_6
    const/4 v0, 0x4

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto :goto_c

    .line 396
    :sswitch_7
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto :goto_c

    .line 399
    :sswitch_8
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->ALIGN_INDEX:S

    aget-byte v0, v0, v1

    if-eqz v0, :cond_9

    .line 401
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->ALIGN_INDEX:S

    aget-byte v0, v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto :goto_c

    .line 416
    :pswitch_1c
    const/4 v0, 0x1

    .line 417
    goto :goto_d

    .line 422
    :cond_b
    sget-object v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v1, v1, v7

    sget-short v2, Lcom/mobipocket/common/parser/styles/EBookCSS;->BULLET_TYPE_INDEX:S

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 424
    const/16 v0, 0x64

    goto :goto_d

    .line 440
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 442
    :cond_d
    sget v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DIMUNIT_MASK:I

    sget v3, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->DEFAULTATTR_MASK:I

    or-int/2addr v2, v3

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    goto/16 :goto_3

    .line 452
    :cond_e
    if-lez v0, :cond_0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 454
    new-instance v1, Lcom/mobipocket/common/parser/TextProperties;

    iget-object v2, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    iget-object v3, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    iget-object v4, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_DefaultFont:Lcom/amazon/system/drawing/Font;

    invoke-interface {v4}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/amazon/system/drawing/FontTools;->setHTMLFontSize(ILcom/amazon/system/drawing/Font;I)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mobipocket/common/parser/TextProperties;-><init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V

    iput-object v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    goto/16 :goto_0

    .line 464
    :pswitch_1d
    const/16 v0, 0x33

    invoke-virtual {p2, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 465
    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_0

    .line 483
    :sswitch_9
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->ALIGN_INDEX:S

    aget-byte v0, v0, v1

    if-eqz v0, :cond_f

    .line 485
    sget-object v0, Lcom/mobipocket/common/parser/styles/EBookCSS;->kg_HTMLBasicCSS:[[B

    aget-object v0, v0, v7

    sget-short v1, Lcom/mobipocket/common/parser/styles/EBookCSS;->ALIGN_INDEX:S

    aget-byte v0, v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 468
    :sswitch_a
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 471
    :sswitch_b
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 474
    :sswitch_c
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 477
    :sswitch_d
    const/4 v0, 0x4

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 480
    :sswitch_e
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 489
    :cond_f
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_3
    .end packed-switch

    .line 372
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1b
        :pswitch_1
        :pswitch_1d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1d
        :pswitch_1d
    .end packed-switch

    .line 164
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 198
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_12
        :pswitch_11
    .end packed-switch

    .line 231
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 264
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_16
        :pswitch_15
    .end packed-switch

    .line 297
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch

    .line 347
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_0
        :pswitch_d
        :pswitch_19
    .end packed-switch

    .line 381
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_8
        0x11 -> :sswitch_3
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_6
        0x16 -> :sswitch_7
    .end sparse-switch

    .line 413
    :pswitch_data_8
    .packed-switch 0x2e
        :pswitch_1c
    .end packed-switch

    .line 465
    :sswitch_data_2
    .sparse-switch
        -0x1 -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_d
        0x16 -> :sswitch_e
    .end sparse-switch
.end method

.method public getBQIndent(I)I
    .locals 2
    .parameter "availableWidth"

    .prologue
    .line 529
    shr-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->blockquoteIndent:I

    :goto_0
    return v0

    :cond_0
    shr-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method public getBulletStyle()S
    .locals 1

    .prologue
    .line 539
    iget-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletStyle:S

    return v0
.end method

.method public getBulletType()S
    .locals 1

    .prologue
    .line 534
    iget-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->bulletType:S

    return v0
.end method

.method public getFont()Lcom/amazon/system/drawing/Font;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TextProperties;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    return-object v0
.end method

.method public getParagraphStyle()S
    .locals 1

    .prologue
    .line 513
    iget-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    return v0
.end method

.method public getTextProperties()Lcom/mobipocket/common/parser/TextProperties;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_TextProperties:Lcom/mobipocket/common/parser/TextProperties;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_Title:Ljava/lang/String;

    return-object v0
.end method

.method public setParagraphStyle(I)V
    .locals 1
    .parameter "paragraphStyle"

    .prologue
    .line 545
    int-to-short v0, p1

    iput-short v0, p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->_ParagraphStyle:S

    .line 546
    return-void
.end method

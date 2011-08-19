.class public Lcom/mobipocket/common/library/reader/DecorationGenerator;
.super Ljava/lang/Object;
.source "DecorationGenerator.java"


# static fields
.field public static final DT_HIGHLIGHT:I = 0x2

.field public static final DT_NOTE:I = 0x1

.field public static final DT_SEARCH_HIGHLIGHT:I = 0x3


# instance fields
.field private enableNoteHighlight:Z

.field private enableNoteIcon:Z

.field private noteFont:Lcom/amazon/system/drawing/Font;

.field private settings:Lcom/mobipocket/common/library/reader/BookViewSettings;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/BookViewSettings;ZZLcom/amazon/system/drawing/FontFactory;)V
    .locals 6
    .parameter "settings"
    .parameter "enableNoteHighlight"
    .parameter "enableNoteIcon"
    .parameter "fontFactory"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteHighlight:Z

    .line 20
    iput-boolean v3, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteIcon:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->noteFont:Lcom/amazon/system/drawing/Font;

    .line 34
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->settings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    .line 35
    iput-boolean p2, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteHighlight:Z

    .line 36
    iput-boolean p3, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteIcon:Z

    .line 37
    if-eqz p4, :cond_0

    .line 39
    invoke-interface {p4}, Lcom/amazon/system/drawing/FontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    move-object v0, p4

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/amazon/system/drawing/FontFactory;->getFont(Ljava/lang/String;IZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->noteFont:Lcom/amazon/system/drawing/Font;

    .line 41
    :cond_0
    return-void
.end method

.method private getHighlightColor(I)I
    .locals 1
    .parameter

    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->settings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getHighlightColor()I

    move-result v0

    .line 105
    :goto_0
    return v0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->settings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getSearchResultBGColor()I

    move-result v0

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->settings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getNoteColor()I

    move-result v0

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDecoration(IILjava/util/Vector;I)Lcom/mobipocket/common/library/reader/Decoration;
    .locals 9
    .parameter "pageObjectsBegin"
    .parameter "pageObjectsEnd"
    .parameter "pageObjects"
    .parameter "decorationType"

    .prologue
    .line 55
    invoke-virtual {p0, p4}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getDecorationVisualEffects(I)I

    move-result v4

    .line 56
    .local v4, type:I
    invoke-direct {p0, p4}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getHighlightColor(I)I

    move-result v5

    .line 58
    .local v5, highlightColor:I
    new-instance v0, Lcom/mobipocket/common/library/reader/Decoration;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->settings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getNoteIconColor()I

    move-result v6

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->settings:Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getNoteIconSelectedColor()I

    move-result v7

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->noteFont:Lcom/amazon/system/drawing/Font;

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/Decoration;-><init>(IILjava/util/Vector;IIIILcom/amazon/system/drawing/Font;)V

    return-object v0
.end method

.method public getDecorationVisualEffects(I)I
    .locals 2
    .parameter "decorationType"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, type:I
    packed-switch p1, :pswitch_data_0

    .line 135
    const/4 v0, 0x2

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 123
    :pswitch_0
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteHighlight:Z

    if-eqz v1, :cond_1

    .line 125
    const/4 v0, 0x2

    .line 127
    :cond_1
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteIcon:Z

    if-eqz v1, :cond_0

    .line 129
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnableNoteHighlight(Z)V
    .locals 0
    .parameter "enableNoteHighlight"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteHighlight:Z

    .line 70
    return-void
.end method

.method public setEnableNoteIcon(Z)V
    .locals 0
    .parameter "enableNoteIcon"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/DecorationGenerator;->enableNoteIcon:Z

    .line 81
    return-void
.end method

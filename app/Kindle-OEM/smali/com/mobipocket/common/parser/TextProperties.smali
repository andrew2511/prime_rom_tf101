.class public Lcom/mobipocket/common/parser/TextProperties;
.super Ljava/lang/Object;
.source "TextProperties.java"


# instance fields
.field private final bgTextColor:I

.field private final font:Lcom/amazon/system/drawing/Font;

.field private final fontYDisplacement:I

.field private final languageID:I

.field private final pStriked:Z

.field private final textColor:I


# direct methods
.method public constructor <init>(Lcom/amazon/system/drawing/Font;ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    .line 26
    iput-boolean p2, p0, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    .line 28
    iput p3, p0, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    .line 29
    iput p4, p0, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    .line 30
    iput p5, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    .line 31
    iput p6, p0, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/TextProperties;)V
    .locals 1
    .parameter "toCopy"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    iput-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    .line 37
    iget-boolean v0, p1, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    .line 38
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    .line 39
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    .line 40
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    .line 41
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/TextProperties;I)V
    .locals 1
    .parameter "toCopy"
    .parameter "textColor"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    iput-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    .line 58
    iget-boolean v0, p1, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    .line 59
    iput p2, p0, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    .line 60
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    .line 61
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    .line 62
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/TextProperties;Lcom/amazon/system/drawing/Font;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    .line 47
    iget-boolean v0, p1, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    .line 49
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    .line 50
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    .line 51
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    .line 52
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/parser/TextProperties;ZI)V
    .locals 1
    .parameter "toCopy"
    .parameter "striked"
    .parameter "yDisplacement"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    iput-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    .line 68
    iput-boolean p2, p0, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    .line 69
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    .line 70
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    .line 71
    iput p3, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    .line 72
    iget v0, p1, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    iput v0, p0, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    .line 73
    return-void
.end method


# virtual methods
.method public getBGTextColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/mobipocket/common/parser/TextProperties;->bgTextColor:I

    return v0
.end method

.method public getBaselinePosition()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getBaselinePosition()I

    move-result v0

    iget v1, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDescent()I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getDescent()I

    move-result v0

    iget v1, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDisplacement()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/mobipocket/common/parser/TextProperties;->fontYDisplacement:I

    return v0
.end method

.method public getFont()Lcom/amazon/system/drawing/Font;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobipocket/common/parser/TextProperties;->font:Lcom/amazon/system/drawing/Font;

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLanguageID()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mobipocket/common/parser/TextProperties;->languageID:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/mobipocket/common/parser/TextProperties;->textColor:I

    return v0
.end method

.method public isStriked()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/TextProperties;->pStriked:Z

    return v0
.end method

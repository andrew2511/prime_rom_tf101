.class Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;
.super Ljava/lang/Object;
.source "PageConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/PageConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageConstructorLayoutSettings"
.end annotation


# instance fields
.field defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field getHighResImages:Z

.field height:I

.field hyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

.field lineSpacing:I

.field paragraphIndentation:I

.field paragraphSpacing:I

.field tableBkgColor:I

.field tableCellPadding:I

.field width:I

.field xMargin:I

.field yMargin:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/amazon/kcp/reader/models/internal/CMBPArticleTOCItem;
.super Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;
.source "CMBPArticleTOCItem.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IArticleTOCItem;


# instance fields
.field private section:Lcom/amazon/kcp/reader/models/ISectionTOCItem;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/ISectionTOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V
    .locals 0
    .parameter "item"
    .parameter "section"
    .parameter "bookNavigator"

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/reader/models/AbstractCMBPTOCItem;-><init>(Lcom/mobipocket/common/library/reader/TOCItem;Lcom/amazon/kcp/reader/models/internal/CMBPBookNavigator;)V

    .line 28
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CMBPArticleTOCItem;->section:Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    .line 29
    return-void
.end method


# virtual methods
.method public getSection()Lcom/amazon/kcp/reader/models/ISectionTOCItem;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CMBPArticleTOCItem;->section:Lcom/amazon/kcp/reader/models/ISectionTOCItem;

    return-object v0
.end method

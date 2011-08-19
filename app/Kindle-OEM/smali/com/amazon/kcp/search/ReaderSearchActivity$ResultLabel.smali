.class public Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;
.super Lcom/amazon/kcp/reader/models/BookSearchResult;
.source "ReaderSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultLabel"
.end annotation


# instance fields
.field public final isSectionHeader:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "text"
    .parameter "position"
    .parameter "isSectionHeader"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/amazon/kcp/reader/models/BookSearchResult;-><init>(Ljava/lang/String;III)V

    .line 60
    iput-boolean p3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;->isSectionHeader:Z

    .line 61
    return-void
.end method


# virtual methods
.method public gotoLocation()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

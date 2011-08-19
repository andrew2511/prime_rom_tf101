.class public Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/BookOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookOpenParameters"
.end annotation


# instance fields
.field private closePrevious:Z

.field private openMode:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

.field private startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    iput-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 51
    sget-object v0, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    iput-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->openMode:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->closePrevious:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getClosePrevious()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->closePrevious:Z

    return v0
.end method

.method public getOpenReaderMode()Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->openMode:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    return-object v0
.end method

.method public getStartPage()Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    return-object v0
.end method

.method public setClosePrevious(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->closePrevious:Z

    .line 83
    return-void
.end method

.method public setOpenReaderMode(Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->openMode:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    .line 73
    return-void
.end method

.method public setStartPage(Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;->startPage:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    .line 63
    return-void
.end method

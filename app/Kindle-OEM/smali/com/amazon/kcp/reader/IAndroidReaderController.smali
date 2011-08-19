.class public interface abstract Lcom/amazon/kcp/reader/IAndroidReaderController;
.super Ljava/lang/Object;
.source "IAndroidReaderController.java"

# interfaces
.implements Lcom/amazon/kcp/application/Historizable;
.implements Lcom/amazon/kcp/reader/IReaderController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;,
        Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;
    }
.end annotation


# static fields
.field public static final START_PAGE:Ljava/lang/String; = "start_page"


# virtual methods
.method public abstract getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;
.end method

.method public abstract getLastReadBook()Lcom/amazon/kcp/library/models/ILocalBookItem;
.end method

.method public abstract openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V
.end method

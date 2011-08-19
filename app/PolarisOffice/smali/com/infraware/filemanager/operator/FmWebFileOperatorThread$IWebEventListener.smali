.class public interface abstract Lcom/infraware/filemanager/operator/FmWebFileOperatorThread$IWebEventListener;
.super Ljava/lang/Object;
.source "FmWebFileOperatorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/operator/FmWebFileOperatorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWebEventListener"
.end annotation


# virtual methods
.method public abstract onDownload(Ljava/lang/String;)V
.end method

.method public abstract onInitLogin()V
.end method

.method public abstract onInitState()V
.end method

.method public abstract onResult(III)V
.end method

.method public abstract onToastText(Ljava/lang/String;)V
.end method

.method public abstract onUpdate()V
.end method

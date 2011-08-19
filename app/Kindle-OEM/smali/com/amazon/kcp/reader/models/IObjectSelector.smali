.class public interface abstract Lcom/amazon/kcp/reader/models/IObjectSelector;
.super Ljava/lang/Object;
.source "IObjectSelector.java"


# static fields
.field public static final ACTION_PERFORMED_NO_REFRESH_REQUIRED:I = 0x2

.field public static final ACTION_PERFORMED_REFRESH_REQUIRED:I = 0x1

.field public static final NO_ACTION_PERFORMED:I


# virtual methods
.method public abstract hasSelectableObjects()Z
.end method

.method public abstract performAction()I
.end method

.method public abstract selectAt(III)Z
.end method

.method public abstract selectNext()Z
.end method

.method public abstract selectNone()V
.end method

.method public abstract selectPrevious()Z
.end method

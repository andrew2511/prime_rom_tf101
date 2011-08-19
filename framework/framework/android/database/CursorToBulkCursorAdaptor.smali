.class public final Landroid/database/CursorToBulkCursorAdaptor;
.super Landroid/database/BulkCursorNative;
.source "CursorToBulkCursorAdaptor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private final mCursor:Landroid/database/CrossProcessCursor;

.field private mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

.field private final mProviderName:Ljava/lang/String;

.field private mWindow:Landroid/database/CursorWindow;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/IContentObserver;Ljava/lang/String;ZLandroid/database/CursorWindow;)V
    .registers 12
    .parameter "cursor"
    .parameter "observer"
    .parameter "providerName"
    .parameter "allowWrite"
    .parameter "window"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/database/BulkCursorNative;-><init>()V

    .line 76
    :try_start_3
    move-object v0, p1

    check-cast v0, Landroid/database/CrossProcessCursor;

    move-object v3, v0

    iput-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 77
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    instance-of v3, v3, Landroid/database/AbstractWindowedCursor;

    if-eqz v3, :cond_53

    .line 78
    move-object v0, p1

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    move-object v2, v0

    .line 79
    .local v2, windowedCursor:Landroid/database/AbstractWindowedCursor;
    invoke-virtual {v2}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 80
    const-string v3, "Cursor"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 85
    :cond_22
    :goto_22
    invoke-virtual {v2, p5}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_25} :catch_49

    .line 95
    .end local v2           #windowedCursor:Landroid/database/AbstractWindowedCursor;
    :goto_25
    iput-object p3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p2}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxy(Landroid/database/IContentObserver;)V

    .line 98
    return-void

    .line 81
    .restart local v2       #windowedCursor:Landroid/database/AbstractWindowedCursor;
    :cond_2b
    :try_start_2b
    const-string v3, "Cursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cross process cursor has a local window before setWindow in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_48} :catch_49

    goto :goto_22

    .line 90
    .end local v2           #windowedCursor:Landroid/database/AbstractWindowedCursor;
    :catch_49
    move-exception v3

    move-object v1, v3

    .line 92
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Only CrossProcessCursor cursors are supported across process for now"

    invoke-direct {v3, v4, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 87
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_53
    :try_start_53
    iput-object p5, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 88
    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p5}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_5b
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_5b} :catch_49

    goto :goto_25
.end method

.method private createAndRegisterObserverProxy(Landroid/database/IContentObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_c

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "an observer is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_c
    new-instance v0, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-direct {v0, p1, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;-><init>(Landroid/database/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 182
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    return-void
.end method

.method private maybeUnregisterObserverProxy()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    if-eqz v0, :cond_13

    .line 188
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-interface {v0, v1}, Landroid/database/CrossProcessCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 189
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    invoke-virtual {v0, p0}, Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mObserver:Landroid/database/CursorToBulkCursorAdaptor$ContentObserverProxy;

    .line 192
    :cond_13
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 102
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_e

    .line 103
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 105
    :cond_e
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->maybeUnregisterObserverProxy()V

    .line 140
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->close()V

    .line 141
    return-void
.end method

.method public count()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->maybeUnregisterObserverProxy()V

    .line 135
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->deactivate()V

    .line 136
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public getWindow(I)Landroid/database/CursorWindow;
    .registers 4
    .parameter "startPos"

    .prologue
    .line 108
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->moveToPosition(I)Z

    .line 110
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_2a

    .line 111
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p1, v0, :cond_20

    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_27

    .line 113
    :cond_20
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    invoke-interface {v0, p1, v1}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 115
    :cond_27
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 117
    .end local p0
    :goto_29
    return-object v0

    .restart local p0
    :cond_2a
    iget-object p0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    .end local p0
    check-cast p0, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    goto :goto_29
.end method

.method public onMove(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 122
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    iget-object v1, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1}, Landroid/database/CrossProcessCursor;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    .line 123
    return-void
.end method

.method public requery(Landroid/database/IContentObserver;Landroid/database/CursorWindow;)I
    .registers 7
    .parameter "observer"
    .parameter "window"

    .prologue
    .line 144
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-nez v2, :cond_b

    .line 145
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    check-cast v2, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {v2, p2}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 148
    :cond_b
    :try_start_b
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->requery()Z
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_10} :catch_15

    move-result v2

    if-nez v2, :cond_3c

    .line 149
    const/4 v2, -0x1

    .line 164
    :goto_14
    return v2

    .line 151
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 152
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Requery misuse db, mCursor isClosed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v3}, Landroid/database/CrossProcessCursor;->isClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    .local v1, leakProgram:Ljava/lang/IllegalStateException;
    throw v1

    .line 158
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #leakProgram:Ljava/lang/IllegalStateException;
    :cond_3c
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v2, :cond_48

    .line 159
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 160
    iput-object p2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mWindow:Landroid/database/CursorWindow;

    .line 162
    :cond_48
    invoke-direct {p0}, Landroid/database/CursorToBulkCursorAdaptor;->maybeUnregisterObserverProxy()V

    .line 163
    invoke-direct {p0, p1}, Landroid/database/CursorToBulkCursorAdaptor;->createAndRegisterObserverProxy(Landroid/database/IContentObserver;)V

    .line 164
    iget-object v2, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getCount()I

    move-result v2

    goto :goto_14
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .parameter "extras"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/database/CursorToBulkCursorAdaptor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1}, Landroid/database/CrossProcessCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.class public Landroid/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Loader$OnLoadCompleteListener;,
        Landroid/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v1, p0, Landroid/content/Loader;->mStarted:Z

    .line 51
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 53
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    .prologue
    .line 262
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 263
    invoke-virtual {p0}, Landroid/content/Loader;->onAbandon()V

    .line 264
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p1, data:Ljava/lang/Object;,"TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 344
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p1, data:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 106
    :cond_9
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 367
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 368
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 372
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 373
    return-void
.end method

.method public forceLoad()V
    .registers 1

    .prologue
    .line 218
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 219
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 112
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 119
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget v0, p0, Landroid/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    .prologue
    .line 167
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .registers 2

    .prologue
    .line 176
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 158
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .registers 1

    .prologue
    .line 276
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public onContentChanged()V
    .registers 2

    .prologue
    .line 327
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-eqz v0, :cond_8

    .line 328
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 335
    :goto_7
    return-void

    .line 333
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    goto :goto_7
.end method

.method protected onForceLoad()V
    .registers 1

    .prologue
    .line 226
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .registers 1

    .prologue
    .line 305
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    .prologue
    .line 207
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    .prologue
    .line 254
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V
    .registers 5
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p2, listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_c

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_c
    iput-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 134
    iput p1, p0, Landroid/content/Loader;->mId:I

    .line 135
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Landroid/content/Loader;->onReset()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 293
    iput-boolean v1, p0, Landroid/content/Loader;->mStarted:Z

    .line 294
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 295
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 296
    return-void
.end method

.method public final startLoading()V
    .registers 3

    .prologue
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 196
    iput-boolean v1, p0, Landroid/content/Loader;->mReset:Z

    .line 197
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 198
    invoke-virtual {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 199
    return-void
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 243
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 244
    invoke-virtual {p0}, Landroid/content/Loader;->onStopLoading()V

    .line 245
    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    .prologue
    .line 313
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 314
    .local v0, res:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 315
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 352
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget v1, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Landroid/content/Loader;,"Landroid/content/Loader<TD;>;"
    .local p1, listener:Landroid/content/Loader$OnLoadCompleteListener;,"Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_c

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_18

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 150
    return-void
.end method

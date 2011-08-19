.class public abstract Lcom/android/vending/compat/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/compat/animation/Animator$AnimatorListener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 202
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public clone()Lcom/android/vending/compat/animation/Animator;
    .locals 7

    .prologue
    .line 147
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/compat/animation/Animator;

    .line 148
    .local v0, anim:Lcom/android/vending/compat/animation/Animator;
    iget-object v5, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 149
    iget-object v4, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 150
    .local v4, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 152
    .local v3, numListeners:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 153
    iget-object v5, v0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v0           #anim:Lcom/android/vending/compat/animation/Animator;
    .end local v2           #i:I
    .end local v3           #numListeners:I
    .end local v4           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Animator$AnimatorListener;>;"
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 158
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 156
    .end local v1           #e:Ljava/lang/CloneNotSupportedException;
    .restart local v0       #anim:Lcom/android/vending/compat/animation/Animator;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/Animator;->clone()Lcom/android/vending/compat/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/compat/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract isRunning()Z
.end method

.method public removeListener(Lcom/android/vending/compat/animation/Animator$AnimatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/compat/animation/Animator;->mListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public abstract setDuration(J)Lcom/android/vending/compat/animation/Animator;
.end method

.method public start()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.class public Lcom/google/android/youtube/core/async/Optional$Null;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Null"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Optional",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/youtube/core/async/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/youtube/core/async/Optional$Null;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/Optional$Null;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/async/Optional$Null;->INSTANCE:Lcom/google/android/youtube/core/async/Optional;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/youtube/core/async/Optional$Null;,"Lcom/google/android/youtube/core/async/Optional$Null<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/google/android/youtube/core/async/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">()",
            "Lcom/google/android/youtube/core/async/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/youtube/core/async/Optional$Null;->INSTANCE:Lcom/google/android/youtube/core/async/Optional;

    return-object v0
.end method

.class public interface abstract Lcom/google/android/apps/books/util/EncryptionUtils$K_rStorage;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/EncryptionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "K_rStorage"
.end annotation


# virtual methods
.method public abstract getK_r()Ljavax/crypto/SecretKey;
.end method

.method public abstract getK_rVersion()I
.end method

.class public interface abstract Lcom/google/ads/AdSpec;
.super Ljava/lang/Object;
.source "AdSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdSpec$Parameter;
    }
.end annotation


# static fields
.field public static final CONTENT_AD_URL:Ljava/lang/String; = "http://pagead2.googlesyndication.com/pagead/afma_load_ads.js"

.field public static final SEARCH_AD_URL:Ljava/lang/String; = "http://www.gstatic.com/mobile/ads/safma_load_ads.js"


# virtual methods
.method public abstract generateParameters(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdUrl()Ljava/lang/String;
.end method

.method public abstract getDebugMode()Z
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

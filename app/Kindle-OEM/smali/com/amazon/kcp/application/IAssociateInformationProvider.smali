.class public interface abstract Lcom/amazon/kcp/application/IAssociateInformationProvider;
.super Ljava/lang/Object;
.source "IAssociateInformationProvider.java"


# static fields
.field public static final DETAIL_PAGE_LINK_CODE:Ljava/lang/String; = "as2"

.field public static final LINK_CODE_KEY_NAME:Ljava/lang/String; = "linkCode"

.field public static final STORE_FRONT_LINK_CODE:Ljava/lang/String; = "bn1"

.field public static final TAG_KEY_NAME:Ljava/lang/String; = "tag"


# virtual methods
.method public abstract getAssociateTag()Ljava/lang/String;
.end method

.method public abstract isOEMPreload()Z
.end method

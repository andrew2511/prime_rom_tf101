.class public Lcom/layar/data/social/SocialCommunicator$ShareSocialData;
.super Ljava/lang/Object;
.source "SocialCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/social/SocialCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareSocialData"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public layer:Lcom/layar/data/layer/Layer20;

.field public link:Ljava/lang/String;

.field public location:Landroid/location/Location;

.field public locationFriendlyName:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x761f7a2f5e3b8b6dL


# instance fields
.field public domain:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public incomingUriTemplate:Ljava/lang/String;

.field public incomingUsernameTemplate:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public outgoingUriTemplate:Ljava/lang/String;

.field public outgoingUsernameTemplate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
.super Ljava/lang/Object;
.source "MailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentRequest"
.end annotation


# instance fields
.field public attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

.field public message:Lcom/google/android/gm/provider/MailSync$Message;

.field public rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

.field public saveToSd:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/MailProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;-><init>()V

    return-void
.end method

.class Lcom/google/android/gm/Persistence$MailEnginePreferences;
.super Ljava/lang/Object;
.source "Persistence.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailEngine$Preferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MailEnginePreferences"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p1, p0, Lcom/google/android/gm/Persistence$MailEnginePreferences;->mContext:Landroid/content/Context;

    .line 593
    return-void
.end method


# virtual methods
.method public getPrefetchAttachments(Ljava/lang/String;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 596
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/Persistence$MailEnginePreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/Persistence;->getPrefetchAttachments(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class final Lcom/google/android/apps/uploader/clients/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/google/android/apps/uploader/clients/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/SettingsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/b;->b:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iput p2, p0, Lcom/google/android/apps/uploader/clients/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/b;->b:Lcom/google/android/apps/uploader/clients/SettingsActivity;

    iget v1, p0, Lcom/google/android/apps/uploader/clients/b;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 502
    return-void
.end method

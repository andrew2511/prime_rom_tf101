.class final Lcom/google/android/apps/uploader/clients/picasa/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/picasa/l;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/l;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/n;->a:Lcom/google/android/apps/uploader/clients/picasa/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/n;->a:Lcom/google/android/apps/uploader/clients/picasa/l;

    invoke-static {v0}, Lcom/google/android/apps/uploader/clients/picasa/l;->a(Lcom/google/android/apps/uploader/clients/picasa/l;)Lcom/google/android/apps/uploader/clients/picasa/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/clients/picasa/a;->a(Ljava/lang/String;)V

    .line 75
    return-void
.end method

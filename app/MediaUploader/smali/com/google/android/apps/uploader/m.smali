.class final Lcom/google/android/apps/uploader/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/ManagerActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/ManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/apps/uploader/m;->a:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/apps/uploader/m;->a:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v0}, Lcom/google/android/apps/uploader/ManagerActivity;->f(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/J;->d()V

    .line 340
    return-void
.end method

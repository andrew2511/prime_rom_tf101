.class Ljava/util/prefs/FilePreferencesImpl$2;
.super Ljava/lang/Object;
.source "FilePreferencesImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FilePreferencesImpl;->initPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/prefs/FilePreferencesImpl;


# direct methods
.method constructor <init>(Ljava/util/prefs/FilePreferencesImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Ljava/util/prefs/FilePreferencesImpl$2;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl$2;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    #getter for: Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;
    invoke-static {v0}, Ljava/util/prefs/FilePreferencesImpl;->access$200(Ljava/util/prefs/FilePreferencesImpl;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl$2;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.class Ljava/util/prefs/FilePreferencesImpl$3;
.super Ljava/lang/Object;
.source "FilePreferencesImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/FilePreferencesImpl;->childrenNamesSpi()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<[",
        "Ljava/lang/String;",
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
    .line 132
    iput-object p1, p0, Ljava/util/prefs/FilePreferencesImpl$3;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/util/prefs/FilePreferencesImpl$3;->run()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Ljava/util/prefs/FilePreferencesImpl$3;->this$0:Ljava/util/prefs/FilePreferencesImpl;

    #getter for: Ljava/util/prefs/FilePreferencesImpl;->dir:Ljava/io/File;
    invoke-static {v0}, Ljava/util/prefs/FilePreferencesImpl;->access$200(Ljava/util/prefs/FilePreferencesImpl;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/util/prefs/FilePreferencesImpl$3$1;

    invoke-direct {v1, p0}, Ljava/util/prefs/FilePreferencesImpl$3$1;-><init>(Ljava/util/prefs/FilePreferencesImpl$3;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

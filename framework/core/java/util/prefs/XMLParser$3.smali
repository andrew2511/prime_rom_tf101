.class final Ljava/util/prefs/XMLParser$3;
.super Ljava/lang/Object;
.source "XMLParser.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/XMLParser;->loadFilePrefs(Ljava/io/File;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Ljava/util/prefs/XMLParser$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 476
    invoke-virtual {p0}, Ljava/util/prefs/XMLParser$3;->run()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Ljava/util/prefs/XMLParser$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Ljava/util/prefs/XMLParser;->loadFilePrefsImpl(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

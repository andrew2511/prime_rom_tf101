.class final Ljava/util/prefs/XMLParser$4;
.super Ljava/lang/Object;
.source "XMLParser.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/prefs/XMLParser;->flushFilePrefs(Ljava/io/File;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$prefs:Ljava/util/Properties;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/Properties;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Ljava/util/prefs/XMLParser$4;->val$file:Ljava/io/File;

    iput-object p2, p0, Ljava/util/prefs/XMLParser$4;->val$prefs:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Ljava/util/prefs/XMLParser$4;->val$file:Ljava/io/File;

    iget-object v1, p0, Ljava/util/prefs/XMLParser$4;->val$prefs:Ljava/util/Properties;

    invoke-static {v0, v1}, Ljava/util/prefs/XMLParser;->flushFilePrefsImpl(Ljava/io/File;Ljava/util/Properties;)V

    .line 527
    const/4 v0, 0x0

    return-object v0
.end method

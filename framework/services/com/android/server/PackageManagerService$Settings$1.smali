.class Lcom/android/server/PackageManagerService$Settings$1;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/PackageManagerService$PreferredActivity;",
        "Lcom/android/server/PackageManagerService$PreferredActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService$Settings;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService$Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 8122
    iput-object p1, p0, Lcom/android/server/PackageManagerService$Settings$1;->this$0:Lcom/android/server/PackageManagerService$Settings;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8122
    check-cast p3, Lcom/android/server/PackageManagerService$PreferredActivity;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/PackageManagerService$Settings$1;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/PackageManagerService$PreferredActivity;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/PackageManagerService$PreferredActivity;)V
    .registers 5
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    .line 8130
    iget-object v0, p3, Lcom/android/server/PackageManagerService$PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/PreferredComponent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8131
    return-void
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8122
    check-cast p1, Lcom/android/server/PackageManagerService$PreferredActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$Settings$1;->packageForFilter(Lcom/android/server/PackageManagerService$PreferredActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Lcom/android/server/PackageManagerService$PreferredActivity;)Ljava/lang/String;
    .registers 3
    .parameter "filter"

    .prologue
    .line 8125
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PreferredActivity;->mPref:Lcom/android/server/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

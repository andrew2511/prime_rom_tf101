.class Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/applications/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/applications/ApplicationsProvider;


# direct methods
.method private constructor <init>(Lcom/android/providers/applications/ApplicationsProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    invoke-static {v0}, Lcom/android/providers/applications/ApplicationsProvider;->access$000(Lcom/android/providers/applications/ApplicationsProvider;)V

    .line 160
    return-void
.end method

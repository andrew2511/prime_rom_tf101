.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public installLocation:I

.field public mScanPath:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "packageName"
    .parameter "installLocation"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 149
    iput p2, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    .line 150
    return-void
.end method

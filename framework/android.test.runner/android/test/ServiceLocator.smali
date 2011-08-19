.class public Landroid/test/ServiceLocator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# static fields
.field private static mTestBrowserController:Landroid/test/TestBrowserController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Landroid/test/TestBrowserControllerImpl;

    invoke-direct {v0}, Landroid/test/TestBrowserControllerImpl;-><init>()V

    sput-object v0, Landroid/test/ServiceLocator;->mTestBrowserController:Landroid/test/TestBrowserController;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTestBrowserController()Landroid/test/TestBrowserController;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Landroid/test/ServiceLocator;->mTestBrowserController:Landroid/test/TestBrowserController;

    return-object v0
.end method

.method static setTestBrowserController(Landroid/test/TestBrowserController;)V
    .registers 1
    .parameter "testBrowserController"

    .prologue
    .line 33
    sput-object p0, Landroid/test/ServiceLocator;->mTestBrowserController:Landroid/test/TestBrowserController;

    .line 34
    return-void
.end method

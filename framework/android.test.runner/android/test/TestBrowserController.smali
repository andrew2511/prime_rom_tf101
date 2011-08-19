.class public interface abstract Landroid/test/TestBrowserController;
.super Ljava/lang/Object;
.source "TestBrowserController.java"


# static fields
.field public static final BUNDLE_EXTRA_TEST_METHOD_NAME:Ljava/lang/String; = "testMethodName"


# virtual methods
.method public abstract getIntentForTestAt(I)Landroid/content/Intent;
.end method

.method public abstract registerView(Landroid/test/TestBrowserView;)V
.end method

.method public abstract setTargetBrowserActivityClassName(Ljava/lang/String;)V
.end method

.method public abstract setTargetPackageName(Ljava/lang/String;)V
.end method

.method public abstract setTestSuite(Ljunit/framework/TestSuite;)V
.end method

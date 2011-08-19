.class public abstract Landroid/test/TestBrowserActivity;
.super Landroid/app/ListActivity;
.source "TestBrowserActivity.java"

# interfaces
.implements Landroid/test/TestBrowserView;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/test/TestSuiteProvider;


# static fields
.field public static final BUNDLE_EXTRA_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field private mTestBrowserController:Landroid/test/TestBrowserController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getTestSuiteToBrowse()Ljunit/framework/TestSuite;
    .registers 8

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.RUN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 84
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, testClassName:Ljava/lang/String;
    :try_start_18
    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 88
    .local v2, testClass:Ljava/lang/Class;,"Ljava/lang/Class<Ljunit/framework/Test;>;"
    invoke-static {v2}, Landroid/test/TestCaseUtil;->createTestSuite(Ljava/lang/Class;)Ljunit/framework/TestSuite;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_23} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_23} :catch_45
    .catch Ljava/lang/InstantiationException; {:try_start_18 .. :try_end_23} :catch_65

    move-result-object v4

    .line 101
    .end local v2           #testClass:Ljava/lang/Class;,"Ljava/lang/Class<Ljunit/framework/Test;>;"
    .end local v3           #testClassName:Ljava/lang/String;
    :goto_24
    return-object v4

    .line 89
    .restart local v3       #testClassName:Ljava/lang/String;
    :catch_25
    move-exception v4

    move-object v0, v4

    .line 90
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "TestBrowserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 92
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_45
    move-exception v4

    move-object v0, v4

    .line 93
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v4, "TestBrowserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 95
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_65
    move-exception v4

    move-object v0, v4

    .line 96
    .local v0, e:Ljava/lang/InstantiationException;
    const-string v4, "TestBrowserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InstantiationException for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 101
    .end local v0           #e:Ljava/lang/InstantiationException;
    .end local v3           #testClassName:Ljava/lang/String;
    :cond_85
    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getTopTestSuite()Ljunit/framework/TestSuite;

    move-result-object v4

    goto :goto_24
.end method


# virtual methods
.method public getTestSuite()Ljunit/framework/TestSuite;
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getTopTestSuite()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTopTestSuite()Ljunit/framework/TestSuite;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    invoke-static {}, Landroid/test/ServiceLocator;->getTestBrowserController()Landroid/test/TestBrowserController;

    move-result-object v1

    iput-object v1, p0, Landroid/test/TestBrowserActivity;->mTestBrowserController:Landroid/test/TestBrowserController;

    .line 51
    iget-object v1, p0, Landroid/test/TestBrowserActivity;->mTestBrowserController:Landroid/test/TestBrowserController;

    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/test/TestBrowserController;->setTargetPackageName(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Landroid/test/TestBrowserActivity;->mTestBrowserController:Landroid/test/TestBrowserController;

    invoke-interface {v1, p0}, Landroid/test/TestBrowserController;->registerView(Landroid/test/TestBrowserView;)V

    .line 53
    iget-object v1, p0, Landroid/test/TestBrowserActivity;->mTestBrowserController:Landroid/test/TestBrowserController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/test/TestBrowserController;->setTargetBrowserActivityClassName(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    .local v0, apkPaths:[Ljava/lang/String;
    invoke-static {v0}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 116
    iget-object v1, p0, Landroid/test/TestBrowserActivity;->mTestBrowserController:Landroid/test/TestBrowserController;

    invoke-interface {v1, p3}, Landroid/test/TestBrowserController;->getIntentForTestAt(I)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {p0}, Landroid/test/TestBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Landroid/test/TestBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 63
    invoke-direct {p0}, Landroid/test/TestBrowserActivity;->getTestSuiteToBrowse()Ljunit/framework/TestSuite;

    move-result-object v1

    .line 64
    .local v1, testSuite:Ljunit/framework/TestSuite;
    iget-object v2, p0, Landroid/test/TestBrowserActivity;->mTestBrowserController:Landroid/test/TestBrowserController;

    invoke-interface {v2, v1}, Landroid/test/TestBrowserController;->setTestSuite(Ljunit/framework/TestSuite;)V

    .line 66
    invoke-virtual {v1}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 68
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/TestBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_21
    return-void
.end method

.method public setTestNames(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, testNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000c

    invoke-direct {v0, p0, v1, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 124
    .local v0, arrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/test/TestBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    return-void
.end method

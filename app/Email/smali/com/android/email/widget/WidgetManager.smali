.class public Lcom/android/email/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# static fields
.field private static final mWidgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/widget/EmailWidget;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/android/email/widget/WidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/email/widget/WidgetManager;

    invoke-direct {v0}, Lcom/android/email/widget/WidgetManager;-><init>()V

    sput-object v0, Lcom/android/email/widget/WidgetManager;->sInstance:Lcom/android/email/widget/WidgetManager;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/android/email/widget/WidgetManager;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/email/widget/WidgetManager;->sInstance:Lcom/android/email/widget/WidgetManager;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, n:I
    sget-object v3, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/widget/EmailWidget;

    .line 90
    .local v2, widget:Lcom/android/email/widget/EmailWidget;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    View="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v2           #widget:Lcom/android/email/widget/EmailWidget;
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/email/widget/EmailWidget;
    .locals 2
    .parameter "widgetId"

    .prologue
    .line 76
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/widget/EmailWidget;

    return-object p0
.end method

.method public getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;
    .locals 4
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 63
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/email/widget/WidgetManager;->get(I)Lcom/android/email/widget/EmailWidget;

    move-result-object v0

    .line 64
    .local v0, widget:Lcom/android/email/widget/EmailWidget;
    if-nez v0, :cond_1

    .line 65
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "EmailWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating EmailWidget for id #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    new-instance v0, Lcom/android/email/widget/EmailWidget;

    .end local v0           #widget:Lcom/android/email/widget/EmailWidget;
    invoke-direct {v0, p1, p2}, Lcom/android/email/widget/EmailWidget;-><init>(Landroid/content/Context;I)V

    .line 69
    .restart local v0       #widget:Lcom/android/email/widget/EmailWidget;
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/email/widget/WidgetManager;->put(ILcom/android/email/widget/EmailWidget;)V

    .line 70
    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidget;->start()V

    .line 72
    :cond_1
    return-object v0
.end method

.method public declared-synchronized getOrCreateWidgets(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "widgetIds"

    .prologue
    .line 57
    monitor-enter p0

    move-object v0, p2

    .local v0, arr$:[I
    :try_start_0
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 58
    .local v3, widgetId:I
    invoke-virtual {p0, p1, v3}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v3           #widgetId:I
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method put(ILcom/android/email/widget/EmailWidget;)V
    .locals 2
    .parameter "widgetId"
    .parameter "widget"

    .prologue
    .line 80
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method remove(I)V
    .locals 2
    .parameter "widgetId"

    .prologue
    .line 84
    sget-object v0, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public declared-synchronized updateAllWidgets()V
    .locals 3

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/email/widget/WidgetManager;->mWidgets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/widget/EmailWidget;

    .line 52
    .local v1, widget:Lcom/android/email/widget/EmailWidget;
    invoke-virtual {v1}, Lcom/android/email/widget/EmailWidget;->validateAndUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #widget:Lcom/android/email/widget/EmailWidget;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 54
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

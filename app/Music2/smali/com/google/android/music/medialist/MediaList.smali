.class public abstract Lcom/google/android/music/medialist/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;,
        Lcom/google/android/music/medialist/MediaList$QueryParams;,
        Lcom/google/android/music/medialist/MediaList$MediaCursor;,
        Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/MediaList;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMAGE_LARGE:I = 0x2

.field public static final IMAGE_THUMB:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "MediaList"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/medialist/MediaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, c:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 44
    .local v1, ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 45
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 46
    .local v4, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 49
    :try_start_0
    const-string v5, "getArgs"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    invoke-virtual {v0, v5, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 51
    .local v2, e:Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must implement getArgs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 52
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 53
    .local v2, e:Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must implement getArgs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 58
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    .end local v4           #params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public static thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;
    .locals 8
    .parameter "args"

    .prologue
    .line 67
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 68
    .local v1, comma:I
    if-lez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 73
    .local v2, name:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/google/android/music/medialist/MediaList;->thawClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/google/android/music/medialist/MediaList;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/google/android/music/medialist/MediaList;>;"
    check-cast v0, [Ljava/lang/reflect/Constructor;

    .line 75
    .local v0, ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    array-length v3, v0

    .line 76
    .local v3, numctors:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 77
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected 1 constructor for "

    .end local v1           #comma:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 115
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #numctors:I
    :catch_0
    move-exception p0

    .line 116
    .local p0, e:Ljava/lang/ClassNotFoundException;
    const-string v0, "MediaList"

    const-string v1, "Error thawing medialist"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local p0           #e:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    .restart local v1       #comma:I
    .local p0, args:Ljava/lang/String;
    :cond_0
    move-object v2, p0

    .line 68
    goto :goto_0

    .line 79
    .restart local v0       #ctors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #numctors:I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget-object v0, v0, v2

    .line 82
    .end local v2           #name:Ljava/lang/String;
    .local v0, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 83
    .local v3, paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v2, v3

    .line 84
    .local v2, numargs:I
    if-nez v2, :cond_2

    .line 86
    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    .end local p0           #args:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/medialist/MediaList;

    goto :goto_2

    .line 88
    .restart local p0       #args:Ljava/lang/String;
    :cond_2
    if-gez v1, :cond_3

    .line 89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #args:Ljava/lang/String;
    const-string v0, "no args found"

    .end local v0           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 117
    .end local v1           #comma:I
    .end local v2           #numargs:I
    .end local v3           #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_1
    move-exception p0

    .line 118
    .local p0, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "MediaList"

    const-string v1, "Error thawing medialist"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 91
    .restart local v0       #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .restart local v1       #comma:I
    .restart local v2       #numargs:I
    .restart local v3       #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .local p0, args:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v1           #comma:I
    move-result-object p0

    .line 92
    .local p0, actualargs:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, splitargs:[Ljava/lang/String;
    array-length p0, v4

    .end local p0           #actualargs:Ljava/lang/String;
    if-eq v2, p0, :cond_4

    .line 94
    const-string p0, "MediaList"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Argument count mismatch: got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 p0, 0x0

    goto :goto_2

    .line 98
    .restart local v0       #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    :cond_4
    new-array v5, v2, [Ljava/lang/Object;

    .line 99
    .local v5, thawedArgs:[Ljava/lang/Object;
    const/4 p0, 0x0

    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .local v1, i:I
    :goto_3
    if-ge v1, v2, :cond_9

    .line 101
    aget-object p0, v4, v1

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 102
    .local p0, arg:Ljava/lang/String;
    const-string v6, "<null>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    const/4 p0, 0x0

    .line 105
    :cond_5
    aget-object v6, v3, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_7

    .line 106
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    .end local p0           #arg:Ljava/lang/String;
    aput-object p0, v5, v1

    .line 99
    :cond_6
    :goto_4
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .end local p0           #i:I
    .restart local v1       #i:I
    goto :goto_3

    .line 107
    .local p0, arg:Ljava/lang/String;
    :cond_7
    aget-object v6, v3, v1

    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_8

    .line 108
    aput-object p0, v5, v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    .line 119
    .end local v0           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .end local v1           #i:I
    .end local v2           #numargs:I
    .end local v3           #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #splitargs:[Ljava/lang/String;
    .end local v5           #thawedArgs:[Ljava/lang/Object;
    .end local p0           #arg:Ljava/lang/String;
    :catch_2
    move-exception p0

    .line 120
    .local p0, e:Ljava/lang/InstantiationException;
    const-string v0, "MediaList"

    const-string v1, "Error thawing medialist"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 109
    .restart local v0       #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .restart local v1       #i:I
    .restart local v2       #numargs:I
    .restart local v3       #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v4       #splitargs:[Ljava/lang/String;
    .restart local v5       #thawedArgs:[Ljava/lang/Object;
    .local p0, arg:Ljava/lang/String;
    :cond_8
    :try_start_3
    aget-object v6, v3, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .end local p0           #arg:Ljava/lang/String;
    aput-object p0, v5, v1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    .line 121
    .end local v0           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .end local v1           #i:I
    .end local v2           #numargs:I
    .end local v3           #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #splitargs:[Ljava/lang/String;
    .end local v5           #thawedArgs:[Ljava/lang/Object;
    :catch_3
    move-exception p0

    .line 122
    .local p0, e:Ljava/lang/IllegalAccessException;
    const-string v0, "MediaList"

    const-string v1, "Error thawing medialist"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 114
    .end local p0           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .restart local v1       #i:I
    .restart local v2       #numargs:I
    .restart local v3       #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v4       #splitargs:[Ljava/lang/String;
    .restart local v5       #thawedArgs:[Ljava/lang/Object;
    :cond_9
    :try_start_4
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/medialist/MediaList;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 123
    .end local v0           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lcom/google/android/music/medialist/MediaList;>;"
    .end local v1           #i:I
    .end local v2           #numargs:I
    .end local v3           #paramtypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #splitargs:[Ljava/lang/String;
    .end local v5           #thawedArgs:[Ljava/lang/Object;
    :catch_4
    move-exception p0

    .line 124
    .local p0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v0, "MediaList"

    const-string v1, "Error thawing medialist"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static thawClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .parameter "name"
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/music/medialist/MediaList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 144
    :goto_0
    return-object v3

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "com.android.music."

    .line 140
    .local v2, oldPackagePrefix:Ljava/lang/String;
    const-string v3, "com.android.music."

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.google.android.music."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.android.music."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, newName:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 146
    .end local v1           #newName:Ljava/lang/String;
    :cond_0
    throw v0
.end method


# virtual methods
.method protected createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 241
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/google/android/music/medialist/MediaList;

    if-nez v4, :cond_1

    .line 182
    :cond_0
    const/4 v4, 0x0

    .line 190
    :goto_0
    return v4

    .line 184
    :cond_1
    if-ne p1, p0, :cond_2

    .line 185
    const/4 v4, 0x1

    goto :goto_0

    .line 187
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/medialist/MediaList;

    move-object v3, v0

    .line 188
    .local v3, other:Lcom/google/android/music/medialist/MediaList;
    invoke-virtual {v3}, Lcom/google/android/music/medialist/MediaList;->freeze()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, ice1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->freeze()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, ice2:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method protected filterUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "filterWords"

    .prologue
    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const-string v0, "MediaList"

    const-string v1, "Filtering not supported"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    :cond_0
    return-object p1
.end method

.method public final freeze()Ljava/lang/String;
    .locals 5

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->getArgs()[Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, args:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 171
    :goto_0
    return-object v4

    .line 160
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 163
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    aget-object v0, v1, v3

    .line 165
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 166
    const-string v0, "<null>"

    .line 168
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    .end local v0           #arg:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getAlbumCount(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method public getAlbumId(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 233
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public abstract getContentUri(Landroid/content/Context;)Landroid/net/Uri;
.end method

.method public final getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .locals 8
    .parameter "context"
    .parameter "cols"
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v7

    .line 246
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_0

    move-object v1, v4

    .line 254
    :goto_0
    return-object v1

    .line 250
    :cond_0
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-virtual {p0, v7, p3}, Lcom/google/android/music/medialist/MediaList;->filterUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/medialist/MediaList;->createMediaCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 254
    goto :goto_0
.end method

.method public getCursorAsync(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;)V
    .locals 4
    .parameter "context"
    .parameter "projection"
    .parameter "filter"
    .parameter "callback"

    .prologue
    .line 260
    new-instance v0, Lcom/google/android/music/medialist/MediaList$QueryParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/music/medialist/MediaList$QueryParams;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v0, params:Lcom/google/android/music/medialist/MediaList$QueryParams;
    new-instance v1, Lcom/google/android/music/medialist/MediaList$1;

    invoke-direct {v1, p0, p4}, Lcom/google/android/music/medialist/MediaList$1;-><init>(Lcom/google/android/music/medialist/MediaList;Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;)V

    .line 267
    .local v1, task:Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/music/medialist/MediaList$QueryParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$AsyncQueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    return-void
.end method

.method public getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemLayout()I
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/music/medialist/MediaList;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/music/medialist/MediaList;->getArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 390
    return-void
.end method

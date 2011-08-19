.class public Lorg/easymock/MockControl;
.super Ljava/lang/Object;
.source "MockControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ALWAYS_MATCHER:Lorg/easymock/ArgumentsMatcher;

.field public static final ARRAY_MATCHER:Lorg/easymock/ArgumentsMatcher;

.field public static final EQUALS_MATCHER:Lorg/easymock/ArgumentsMatcher;

.field public static final ONE:Lorg/easymock/internal/Range;

.field public static final ONE_OR_MORE:Lorg/easymock/internal/Range;

.field public static final ZERO_OR_MORE:Lorg/easymock/internal/Range;


# instance fields
.field private final ctrl:Lorg/easymock/internal/MocksControl;

.field private final mock:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lorg/easymock/internal/MocksControl;->ONCE:Lorg/easymock/internal/Range;

    sput-object v0, Lorg/easymock/MockControl;->ONE:Lorg/easymock/internal/Range;

    .line 396
    sget-object v0, Lorg/easymock/internal/MocksControl;->AT_LEAST_ONCE:Lorg/easymock/internal/Range;

    sput-object v0, Lorg/easymock/MockControl;->ONE_OR_MORE:Lorg/easymock/internal/Range;

    .line 401
    sget-object v0, Lorg/easymock/internal/MocksControl;->ZERO_OR_MORE:Lorg/easymock/internal/Range;

    sput-object v0, Lorg/easymock/MockControl;->ZERO_OR_MORE:Lorg/easymock/internal/Range;

    .line 407
    new-instance v0, Lorg/easymock/internal/EqualsMatcher;

    invoke-direct {v0}, Lorg/easymock/internal/EqualsMatcher;-><init>()V

    sput-object v0, Lorg/easymock/MockControl;->EQUALS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    .line 412
    new-instance v0, Lorg/easymock/internal/AlwaysMatcher;

    invoke-direct {v0}, Lorg/easymock/internal/AlwaysMatcher;-><init>()V

    sput-object v0, Lorg/easymock/MockControl;->ALWAYS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    .line 419
    new-instance v0, Lorg/easymock/internal/ArrayMatcher;

    invoke-direct {v0}, Lorg/easymock/internal/ArrayMatcher;-><init>()V

    sput-object v0, Lorg/easymock/MockControl;->ARRAY_MATCHER:Lorg/easymock/ArgumentsMatcher;

    return-void
.end method

.method protected constructor <init>(Lorg/easymock/internal/MocksControl;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/internal/MocksControl;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    .line 25
    invoke-virtual {p1, p2}, Lorg/easymock/internal/MocksControl;->createMock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/easymock/MockControl;->mock:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private callWithConvertedRange(Lorg/easymock/IExpectationSetters;Lorg/easymock/internal/Range;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/easymock/internal/Range;",
            ")V"
        }
    .end annotation

    .prologue
    .line 586
    sget-object v0, Lorg/easymock/MockControl;->ONE:Lorg/easymock/internal/Range;

    if-ne p2, v0, :cond_0

    .line 587
    invoke-interface {p1}, Lorg/easymock/IExpectationSetters;->once()Lorg/easymock/IExpectationSetters;

    .line 595
    :goto_0
    return-void

    .line 588
    :cond_0
    sget-object v0, Lorg/easymock/MockControl;->ONE_OR_MORE:Lorg/easymock/internal/Range;

    if-ne p2, v0, :cond_1

    .line 589
    invoke-interface {p1}, Lorg/easymock/IExpectationSetters;->atLeastOnce()Lorg/easymock/IExpectationSetters;

    goto :goto_0

    .line 590
    :cond_1
    sget-object v0, Lorg/easymock/MockControl;->ZERO_OR_MORE:Lorg/easymock/internal/Range;

    if-ne p2, v0, :cond_2

    .line 591
    invoke-interface {p1}, Lorg/easymock/IExpectationSetters;->anyTimes()Lorg/easymock/IExpectationSetters;

    goto :goto_0

    .line 593
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected Range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createControl(Ljava/lang/Class;)Lorg/easymock/MockControl;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/easymock/MockControl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Lorg/easymock/MockControl;

    invoke-static {}, Lorg/easymock/EasyMock;->createControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MocksControl;

    invoke-direct {v1, v0, p0}, Lorg/easymock/MockControl;-><init>(Lorg/easymock/internal/MocksControl;Ljava/lang/Class;)V

    return-object v1
.end method

.method public static createNiceControl(Ljava/lang/Class;)Lorg/easymock/MockControl;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/easymock/MockControl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Lorg/easymock/MockControl;

    invoke-static {}, Lorg/easymock/EasyMock;->createNiceControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MocksControl;

    invoke-direct {v1, v0, p0}, Lorg/easymock/MockControl;-><init>(Lorg/easymock/internal/MocksControl;Ljava/lang/Class;)V

    return-object v1
.end method

.method public static createStrictControl(Ljava/lang/Class;)Lorg/easymock/MockControl;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/easymock/MockControl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Lorg/easymock/MockControl;

    invoke-static {}, Lorg/easymock/EasyMock;->createStrictControl()Lorg/easymock/IMocksControl;

    move-result-object v0

    check-cast v0, Lorg/easymock/internal/MocksControl;

    invoke-direct {v1, v0, p0}, Lorg/easymock/MockControl;-><init>(Lorg/easymock/internal/MocksControl;Ljava/lang/Class;)V

    return-object v1
.end method

.method private expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/easymock/IExpectationSetters",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    :try_start_0
    invoke-static {}, Lorg/easymock/EasyMock;->expectLastCall()Lorg/easymock/IExpectationSetters;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public expectAndDefaultReturn(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:TV1;>(TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Lorg/easymock/EasyMock;->expectLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andStubReturn(Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public expectAndDefaultThrow(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 572
    const-string v0, "method call on the mock needed before setting default Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andStubThrow(Ljava/lang/Throwable;)V

    .line 575
    return-void
.end method

.method public expectAndReturn(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/easymock/MockControl;->expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public expectAndReturn(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/easymock/MockControl;->expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 482
    return-void
.end method

.method public expectAndReturn(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/easymock/MockControl;->expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 499
    return-void
.end method

.method public expectAndReturn(IILorg/easymock/internal/Range;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/easymock/MockControl;->expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;Lorg/easymock/internal/Range;)V

    .line 465
    return-void
.end method

.method public expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:TV1;>(TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 441
    invoke-static {}, Lorg/easymock/EasyMock;->expectLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0}, Lorg/easymock/IExpectationSetters;->once()Lorg/easymock/IExpectationSetters;

    .line 442
    return-void
.end method

.method public expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:TV1;>(TV1;TV2;I)V"
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Lorg/easymock/EasyMock;->expectLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/easymock/IExpectationSetters;->times(I)Lorg/easymock/IExpectationSetters;

    .line 478
    return-void
.end method

.method public expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:TV1;>(TV1;TV2;II)V"
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Lorg/easymock/EasyMock;->expectLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/easymock/IExpectationSetters;->times(II)Lorg/easymock/IExpectationSetters;

    .line 495
    return-void
.end method

.method public expectAndReturn(Ljava/lang/Object;Ljava/lang/Object;Lorg/easymock/internal/Range;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:TV1;>(TV1;TV2;",
            "Lorg/easymock/internal/Range;",
            ")V"
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {}, Lorg/easymock/EasyMock;->expectLastCall()Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    .line 460
    invoke-direct {p0, v0, p3}, Lorg/easymock/MockControl;->callWithConvertedRange(Lorg/easymock/IExpectationSetters;Lorg/easymock/internal/Range;)V

    .line 461
    return-void
.end method

.method public expectAndThrow(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-static {p1}, Lorg/easymock/EasyMock;->expect(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0}, Lorg/easymock/IExpectationSetters;->once()Lorg/easymock/IExpectationSetters;

    .line 510
    return-void
.end method

.method public expectAndThrow(Ljava/lang/Object;Ljava/lang/Throwable;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    invoke-static {p1}, Lorg/easymock/EasyMock;->expect(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/easymock/IExpectationSetters;->times(I)Lorg/easymock/IExpectationSetters;

    .line 536
    return-void
.end method

.method public expectAndThrow(Ljava/lang/Object;Ljava/lang/Throwable;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-static {p1}, Lorg/easymock/EasyMock;->expect(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/easymock/IExpectationSetters;->times(II)Lorg/easymock/IExpectationSetters;

    .line 549
    return-void
.end method

.method public expectAndThrow(Ljava/lang/Object;Ljava/lang/Throwable;Lorg/easymock/internal/Range;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-static {p1}, Lorg/easymock/EasyMock;->expect(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    .line 523
    invoke-direct {p0, v0, p3}, Lorg/easymock/MockControl;->callWithConvertedRange(Lorg/easymock/IExpectationSetters;Lorg/easymock/internal/Range;)V

    .line 524
    return-void
.end method

.method public getMock()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/easymock/MockControl;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public replay()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0}, Lorg/easymock/internal/MocksControl;->replay()V

    .line 99
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0}, Lorg/easymock/internal/MocksControl;->reset()V

    .line 88
    return-void
.end method

.method public setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0, p1}, Lorg/easymock/internal/MocksControl;->setLegacyDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V

    .line 431
    return-void
.end method

.method public setDefaultReturnValue(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0, p1}, Lorg/easymock/internal/MocksControl;->setLegacyDefaultReturnValue(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public setDefaultThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0, p1}, Lorg/easymock/internal/MocksControl;->setLegacyDefaultThrowable(Ljava/lang/Throwable;)V

    .line 278
    return-void
.end method

.method public setDefaultVoidCallable()V
    .locals 1

    .prologue
    .line 256
    const-string v0, "method call on the mock needed before setting default void callable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object p0

    check-cast p0, Lorg/easymock/internal/MocksControl;

    invoke-virtual {p0}, Lorg/easymock/internal/MocksControl;->setLegacyDefaultVoidCallable()V

    .line 258
    return-void
.end method

.method public setMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0, p1}, Lorg/easymock/internal/MocksControl;->setLegacyMatcher(Lorg/easymock/ArgumentsMatcher;)V

    .line 306
    return-void
.end method

.method public setReturnValue(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    const-string v0, "method call on the mock needed before setting return value"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0}, Lorg/easymock/IExpectationSetters;->once()Lorg/easymock/IExpectationSetters;

    .line 165
    return-void
.end method

.method public setReturnValue(Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    const-string v0, "method call on the mock needed before setting return value"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->times(I)Lorg/easymock/IExpectationSetters;

    .line 224
    return-void
.end method

.method public setReturnValue(Ljava/lang/Object;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    const-string v0, "method call on the mock needed before setting return value"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/easymock/IExpectationSetters;->times(II)Lorg/easymock/IExpectationSetters;

    .line 386
    return-void
.end method

.method public setReturnValue(Ljava/lang/Object;Lorg/easymock/internal/Range;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    const-string v0, "method call on the mock needed before setting return value"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andReturn(Ljava/lang/Object;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    .line 243
    invoke-direct {p0, v0, p2}, Lorg/easymock/MockControl;->callWithConvertedRange(Lorg/easymock/IExpectationSetters;Lorg/easymock/internal/Range;)V

    .line 244
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    const-string v0, "method call on the mock needed before setting Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0}, Lorg/easymock/IExpectationSetters;->once()Lorg/easymock/IExpectationSetters;

    .line 148
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    const-string v0, "method call on the mock needed before setting Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/easymock/IExpectationSetters;->times(I)Lorg/easymock/IExpectationSetters;

    .line 205
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    const-string v0, "method call on the mock needed before setting Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/easymock/IExpectationSetters;->times(II)Lorg/easymock/IExpectationSetters;

    .line 357
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;Lorg/easymock/internal/Range;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 360
    const-string v0, "method call on the mock needed before setting Throwable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->andThrow(Ljava/lang/Throwable;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    .line 363
    invoke-direct {p0, v0, p2}, Lorg/easymock/MockControl;->callWithConvertedRange(Lorg/easymock/IExpectationSetters;Lorg/easymock/internal/Range;)V

    .line 364
    return-void
.end method

.method public setVoidCallable()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "method call on the mock needed before setting void callable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0}, Lorg/easymock/IExpectationSetters;->once()Lorg/easymock/IExpectationSetters;

    .line 127
    return-void
.end method

.method public setVoidCallable(I)V
    .locals 1
    .parameter

    .prologue
    .line 179
    const-string v0, "method call on the mock needed before setting void callable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/easymock/IExpectationSetters;->times(I)Lorg/easymock/IExpectationSetters;

    .line 182
    return-void
.end method

.method public setVoidCallable(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    const-string v0, "method call on the mock needed before setting void callable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/easymock/IExpectationSetters;->times(II)Lorg/easymock/IExpectationSetters;

    .line 326
    return-void
.end method

.method public setVoidCallable(Lorg/easymock/internal/Range;)V
    .locals 1
    .parameter

    .prologue
    .line 329
    const-string v0, "method call on the mock needed before setting void callable"

    invoke-direct {p0, v0}, Lorg/easymock/MockControl;->expectLastCall(Ljava/lang/String;)Lorg/easymock/IExpectationSetters;

    move-result-object v0

    .line 330
    invoke-direct {p0, v0, p1}, Lorg/easymock/MockControl;->callWithConvertedRange(Lorg/easymock/IExpectationSetters;Lorg/easymock/internal/Range;)V

    .line 331
    return-void
.end method

.method public verify()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/easymock/MockControl;->ctrl:Lorg/easymock/internal/MocksControl;

    invoke-virtual {v0}, Lorg/easymock/internal/MocksControl;->verify()V

    .line 112
    return-void
.end method

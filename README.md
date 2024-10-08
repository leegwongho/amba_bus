
  ![image](https://github.com/user-attachments/assets/77d73be9-a652-4185-8379-a09f939a446d)

프로젝트 개요 
  axi를 좀더 이해하자는 취지로 axi를 직접 제작, 사용 해봄으로써 axi구조를 깊게 이해하고 프로토콜에대한 전반적인 이해를 향상 시키자
  
  ![image](https://github.com/user-attachments/assets/e6096a60-db28-4c9d-8010-a490c443a67e)

  axi 란 5개의 독립 적인 채널을 가지고 있고 다양한 데이터 폭을 사용할 수 있기 때문에 사용 목적에
  따라 다양한 데이터폭의 장치를 효율적으로를 다룰 수 있다.
  또한 읽기와 쓰기를 병렬적으로 처리하여 대역폭의 증가, 성능 증가
  버스트 전송기능을 통해 여러 데이터를 연속적으로 전송할 수 있어 대량의 데이터 처리가 가능하다.

  ![image](https://github.com/user-attachments/assets/5b8636b6-d250-4313-945b-2716c887e4b5)

  앞서 말한 버스트 기능이다. 마스터가 받아올 데이터에 대한 주소를 별도로 할당하지 않고 한번의 주소 전송으로 여러 데이터를 전송하는 방식이다. 
  보통 1, 4, 8, 16 단위로 전송한다.

  ![image](https://github.com/user-attachments/assets/578c3afb-2ed6-4d78-89d9-907cc963beaa)

  out of oder 이다. 이는 a의 트랜젝션이 먼저 입력되더라도 b의 데이터 처리가 더 빨랐다면 트랜젝션의 순서 상관없이 더 빨리 완료된 데이터를 처리하는 방식이다.
  이를 통해 유연한 데이터 처리가 가능하다.

  ![image](https://github.com/user-attachments/assets/be8a7397-499a-4329-af82-5b8863cb6a8d)

  axi는 데이터 요청 즉 트랜젝션을 중복해서 받을수있다. 이를 활용하여 데이터 처리 기능이 향상된다.


  ![image](https://github.com/user-attachments/assets/97ba46fc-1ab1-4f71-b877-61c25bb6b807)

  axi와 axi lite라는 두가지 버스가 존재하는데 우린 버스트 전송기능이 없는 axi lite를 설계 해보기로 했다.

  ![image](https://github.com/user-attachments/assets/eb3e3883-fb73-48a3-b27b-852e504ea2ec)

  ![image](https://github.com/user-attachments/assets/0161106f-274e-4ff2-8f65-38ab561d4222)

  axi 에서 중요하게 봐야할 부분이다. addr는 데이터를 읽거나 작성할때에 주소를 지정해주는 신호선이고 data는 실제 전송되는 데이터이다.

  또 valid 는 마스터가 전송하는 데이터가 유효한지를 알려주는 신호이고, ready는 슬레이브가 데이터를 받을 준비가 되었음을 알리는 신호이다.

  ![image](https://github.com/user-attachments/assets/a06bd1da-82b3-4266-922b-bedd6baee304)

  이처럼 valid를 확인한 슬레이브는 ready를 보내 데이터를 받을 준비가되었고 데이터를 받음과 동시에 ready를 0으로 내려 데이터를 처리중임을 마스터에게 알린다.

  ![image](https://github.com/user-attachments/assets/03404d2e-167b-490a-b665-66a54ff0f9d0)

  이런 과정을 마치 악수하는것과 같이 보인다하여 Handshake 라고 하며 axi에서는 트랜스퍼 라고도 부른다.

  ![image](https://github.com/user-attachments/assets/5df804db-1076-4f63-91f7-50073478ae6b)

  이런 트랜스퍼가 모여 write동작을 수행하면 트랜잭션 이라고 부르고 위 사진과 같은 동작을 수행한다.

  ![image](https://github.com/user-attachments/assets/abcece45-4558-4570-b5dd-80dcfa9ebe7c)

  read 트랜잭션이다. 

  ![image](https://github.com/user-attachments/assets/f22c8317-042a-444a-a373-6db454fd3a5d)


  ![image](https://github.com/user-attachments/assets/861d4f1a-0d50-40f1-b5ad-675a713fe951)

  우리가 설계한 master, slave의 상태 천이도 이다. 

  ![image](https://github.com/user-attachments/assets/33918f12-e035-4137-ab1f-012443d813cf)

  rtl 모듈을 사용하여 만든 전체 블록 디자인이다. 


  ![image](https://github.com/user-attachments/assets/365635c0-baa9-456d-841e-db3ff7a14f5e)

  write 동작의 시뮬레이션 이다. address 를 받음과 동시에 awvalid 와 awready 가 내려가고, 또 wdata를 받아 지정된 주소에 작성함과 동시에 
  wvalid 와 wready가 0으로 내려감을 확인할수있었다.

  ![image](https://github.com/user-attachments/assets/0190fae5-b14a-4a8e-878c-2717110dc18e)

  read 동작이다. 마찬가지로 address를 잘 받고있음을 확인할수 있었고, 읽어온 데이터도 잘 받아옴을 확인할수 있었다.

  ![image](https://github.com/user-attachments/assets/e121924e-312b-41d9-97a9-814d25324755)

  ![image](https://github.com/user-attachments/assets/983978bc-ffa4-4793-be21-d116dfb1a35a)

  
  https://www.youtube.com/watch?v=VGz6qCyDiiQ

  시연 영상 유튜브 이다.

  ![image](https://github.com/user-attachments/assets/9a9be008-542f-410e-b84a-f93530e90bf9)

  문제점 수정이다. 처음 시뮬레이션시 valid 신호가 0이 될때 ready 신호가 같이 0이 되지 않는 타이밍문제

  두번 신호가 발생하는 문제  와같은 두가지 문제가 발생하였다.

  ![image](https://github.com/user-attachments/assets/372d283f-d262-4b6a-b49a-68a58d1e2d95)

  동작별로 fsm을 만들어 동작하게 하였더니 valid 가 0이되는 시점의 신호를 ready부분이 확인하여 한번더 전송되는 문제라 판단,
  하나의 fsm으로 모든 동작을 합쳐 문제를 해결하였다.
  
  
![image](https://github.com/user-attachments/assets/133d6f04-f2d8-41cd-ba3c-baac2fd32511)


  axi를 제작을 수행한 기간과 각 동작별 제작 기간이다.
